package cn.exrick.mapper;

import cn.exrick.pojo.front.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TbCartMemberMapper {
    //根据用户Id获取cartId
    Long getCartIdByUserId(long userId);
    //根据用户ID获取购物车里面的信息
    List<Cart> getCartList(long userId);
    //给用户的购物车插入一条记录
    int addCart(Cart cart);
    //更新购物车里面的信息
    int updateCart(Map map);
    //删除购物车里面的一件物品
    int deleteCart(Cart cart);
    //删除购物车中选中的商品
    int deleteCartSelected(long userId);
    //根据购物车Id和商品Id去看用户购物车中是否有该商品
    List<Long> getCartByCartIdAndProductId(Map map);
    //获取购物车中商品数量
    Integer getProductNum(Map map);
}
