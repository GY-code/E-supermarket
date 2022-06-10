package cn.exrick.service.impl;

import cn.exrick.common.jedis.JedisClient;
import cn.exrick.mapper.TbCartMemberMapper;
import cn.exrick.mapper.TbItemMapper;
import cn.exrick.pojo.TbItem;
import cn.exrick.pojo.front.Cart;
import cn.exrick.pojo.front.CartProduct;
import cn.exrick.service.CartService;
import cn.exrick.utils.DtoUtil;
import cn.exrick.utils.MybatisUtil;
import cn.hutool.core.lang.hash.Hash;
import com.google.gson.Gson;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    private final static Logger log= LoggerFactory.getLogger(CartServiceImpl.class);

    @Autowired
    private JedisClient jedisClient;
    @Value("${CART_PRE}")
    private String CART_PRE;
    @Autowired
    private TbItemMapper itemMapper;
    @Autowired
    private TbCartMemberMapper tbCartMemberMapper;

    @Override
    public int addCart(long userId, long itemId, int num) {
        long cartId = tbCartMemberMapper.getCartIdByUserId(userId);
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCartMemberMapper mapper = sqlSession.getMapper(TbCartMemberMapper.class);
        Cart cart = new Cart();
        cart.setCartId(cartId);
        cart.setProductId(itemId);
        cart.setProductNum(num);
        cart.setChecked(0);
        cart.setJoinTime(new Date());
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("cartId",cartId);
        hashMap.put("productId",itemId);
        if (tbCartMemberMapper.getCartByCartIdAndProductId(hashMap).isEmpty()){
            int i = mapper.addCart(cart);
            sqlSession.commit();
        }else {
            Integer productNum = tbCartMemberMapper.getProductNum(hashMap);
            hashMap.clear();
            if (productNum == null){
                productNum = 0;
            }
            hashMap.put("productNum",productNum + 1);
            hashMap.put("cartId",cartId);
            hashMap.put("productId",itemId);
            hashMap.put("checked",1);
            mapper.updateCart(hashMap);
            sqlSession.commit();
        }
        return 1;
    }

    @Override
    public List<Cart> getCartList(long userId) {
//        List<String> jsonList = jedisClient.hvals(CART_PRE + ":" + userId);
//        List<CartProduct> list = new ArrayList<>();
//        for (String json : jsonList) {
//            CartProduct cartProduct = new Gson().fromJson(json,CartProduct.class);
//            list.add(cartProduct);
//        }
//        long cartId = tbCartMemberMapper.getCartIdByUserId(userId);
        List<Cart> list = tbCartMemberMapper.getCartList(userId);
        return list;
    }

    @Override
    public int updateCartNum(long userId, long itemId, int num, int checked) {
        Cart cart = new Cart();
        long cartId = tbCartMemberMapper.getCartIdByUserId(userId);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("cartId",cartId);
        hashMap.put("checked",checked);
        hashMap.put("productId",itemId);
        hashMap.put("productNum",num);
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCartMemberMapper mapper = sqlSession.getMapper(TbCartMemberMapper.class);
        mapper.updateCart(hashMap);
        sqlSession.commit();
        return 1;
    }

    @Override
    public int checkAll(long userId,int checked) {

        List<String> jsonList = jedisClient.hvals(CART_PRE + ":" + userId);
//
//        for (String json : jsonList) {
//            CartProduct cartProduct = new Gson().fromJson(json,CartProduct.class);
//            if("true".equals(checked)) {
//                cartProduct.setChecked("1");
//            }else if("false".equals(checked)) {
//                cartProduct.setChecked("0");
//            }else {
//                return 0;
//            }
//            jedisClient.hset(CART_PRE + ":" + userId, cartProduct.getProductId() + "", new Gson().toJson(cartProduct));
//        }
        Cart cart = new Cart();
        long cartId = tbCartMemberMapper.getCartIdByUserId(userId);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("cartId",cartId);
        hashMap.put("checked",checked);
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCartMemberMapper mapper = sqlSession.getMapper(TbCartMemberMapper.class);
        mapper.updateCart(hashMap);
        sqlSession.commit();
        return 1;
    }

    @Override
    public int delChecked(long userId) {

//        List<String> jsonList = jedisClient.hvals(CART_PRE+":"+userId);
//        for (String json : jsonList) {
//            CartProduct cartProduct = new Gson().fromJson(json,CartProduct.class);
//            if("1".equals(cartProduct.getChecked())) {
//                jedisClient.hdel(CART_PRE+":"+userId, cartProduct.getProductId()+"");
//            }
//        }
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCartMemberMapper mapper = sqlSession.getMapper(TbCartMemberMapper.class);
        long cartId = tbCartMemberMapper.getCartIdByUserId(userId);
        mapper.deleteCartSelected(cartId);
        sqlSession.commit();
        return 1;
    }

    @Override
    public int deleteCartItem(long userId, long itemId) {

//        jedisClient.hdel(CART_PRE + ":" + userId, itemId + "");
        Cart cart = new Cart();
        long cartId = tbCartMemberMapper.getCartIdByUserId(userId);
        cart.setCartId(cartId);
        cart.setProductId(itemId);
        tbCartMemberMapper.deleteCart(cart);
        return 1;
    }

}
