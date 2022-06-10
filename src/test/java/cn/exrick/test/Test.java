package cn.exrick.test;

import cn.exrick.mapper.TbCartMemberMapper;
import cn.exrick.mapper.TbCouponMapper;
import cn.exrick.pojo.front.Cart;
import cn.exrick.pojo.front.CartProduct;
import cn.exrick.pojo.front.Coupon;
import cn.exrick.utils.GeetestLib;
import cn.exrick.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static cn.exrick.utils.GeetestLib.id;

public class Test {

    @org.junit.Test
    public void test1(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCartMemberMapper tbCartMemberMapper = sqlSession.getMapper(TbCartMemberMapper.class);
//        System.out.println(tbCartMemberMapper.getCartIdByUserId(66));

//        List<Cart> cartList = tbCartMemberMapper.getCartList(62);
//        for (int i = 0; i < cartList.size(); i++) {
//            System.out.println(cartList.get(i).toString());
//        }
//        TbCouponMapper tbCouponMapper = sqlSession.getMapper(TbCouponMapper.class);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("categoryId",560);
        hashMap.put("userId",62);
//        Double price = tbCouponMapper.getPrice(hashMap);
//        System.out.println(price);
//        hashMap.put("price",price);
//        Long perfectCoupon2 = tbCouponMapper.getPerfectCoupon(hashMap);
//        System.out.println(perfectCoupon2);
        hashMap.put("product_id",31);
//        Integer productNum = tbCartMemberMapper.getProductNum(hashMap);
//        System.out.println(productNum);

        List<Long> cartByCartIdAndProductId = tbCartMemberMapper.getCartByCartIdAndProductId(hashMap);
        System.out.println(cartByCartIdAndProductId);
        Cart cart = new Cart();
        cart.setCartId(4);
        cart.setProductId(31);
        cart.setProductNum(1);
        cart.setChecked(1);
        cart.setJoinTime(new Date());
        int i = tbCartMemberMapper.addCart(cart);
        sqlSession.commit();
        System.out.println(i);

//        System.out.println(perfectCoupon1.getCouponId());
//        hashMap.put("cartId",1);
//        hashMap.put("checked",0);
//        hashMap.put("productId",679533);
//        hashMap.put("productNum",99);
//        int id = tbCartMemberMapper.updateCart(hashMap);
//        System.out.println(id);
//        Coupon couponByUser = tbCouponMapper.getCouponByUser(hashMap);
//        System.out.println(couponByUser.toString());
//        hashMap.put("couponId",2);
//        Coupon couponByUser1 = tbCouponMapper.getCouponByUser(hashMap);
//        System.out.println(couponByUser1.toString());
    }
}
