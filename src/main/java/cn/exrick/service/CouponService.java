package cn.exrick.service;

import cn.exrick.pojo.front.Coupon;

import java.util.List;

public interface CouponService {
    //获取用户拥有的优惠券
    List<Coupon> getCouponList(long userId);

    //获取所有的优惠券的信息
    List<Coupon> getAllCouponList();

    //兑换优惠券
    int addCoupon(long userId,long couponId);

    //获取最优的优惠券
    Coupon getPerfectCoupon(long userId,long goodsId);

    //优惠券使用记录
    int insertCouponToOrder(String orderId, Integer[] couponIdList);
}
