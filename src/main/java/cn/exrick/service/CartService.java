package cn.exrick.service;



import cn.exrick.pojo.front.Cart;

import java.util.List;

public interface CartService {

    int addCart(long userId, long itemId, int num);

    List<Cart> getCartList(long userId);

    int updateCartNum(long userId, long itemId, int num, int checked);

    int deleteCartItem(long userId, long itemId);

    int checkAll(long userId, int checked);

    /**
     * 删除全部勾选的
     * @param userId
     * @return
     */
    int delChecked(long userId);
}
