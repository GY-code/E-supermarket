package cn.exrick.service;

import cn.exrick.pojo.front.Coupon;

import java.util.ArrayList;
import java.util.List;

public interface CouponService {
    //获取用户拥有的优惠券
    List<Coupon> getCouponList(long userId);

    //获取所有的优惠券的信息
    List<Coupon> getAllCouponList();

    //兑换优惠券
    int addCoupon(long userId,long couponId, int point);

    //获取最优的优惠券
    List<Coupon> getPerfectCoupon(long userId);

    //优惠券使用记录
    int insertCouponToOrder(String orderId, ArrayList<Integer> couponIdList);

    //获取对应优惠券兑换需要的积分
    int getPoint(long couponId);
}
