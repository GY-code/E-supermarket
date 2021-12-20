package cn.exrick.mapper;

import cn.exrick.pojo.front.Cart;
import cn.exrick.pojo.front.CartProduct;

import java.util.List;

public interface TbCartMemberMapper {
    //根据用户ID获取购物车里面的信息
    List<CartProduct> getCartList(long userId);
    //给用户的购物车插入一条记录
    int addCart(Cart cart);
    //更新购物车里面的信息
    int updateCart(Cart cart);
    //删除购物车里面的一件物品
    int deleteCart(Cart cart);
    //删除购物车中选中的商品
    int deleteCart(int userId);
}
