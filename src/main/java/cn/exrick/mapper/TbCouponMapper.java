package cn.exrick.mapper;

import cn.exrick.pojo.front.Coupon;

import java.util.List;
import java.util.Map;

public interface TbCouponMapper {
    //获取所有的优惠券类型（兑换）
    List<Coupon> getAllCouponList();

    //根据用户兑换的优惠券类型，消耗对应的积分
    //参数：long userId,long couponId
    int addCoupon(Map map);

    //修改用户拥有的优惠券的数量
    //参数：long userId,long couponId
    int updateCouponCustomer(Map map);

    //检查该用户是否有对应的优惠券
    //参数：long userId,long couponId
    Coupon getCouponByUser(Map map);

    //获取指定用户的优惠券列表
    List<Coupon> getCouponList(long userId);

    //调用存储过程获得一个最优的优惠券
    //参数：long userId,long goodsId
    int getPerfectCoupon(Map map);

    //订单使用的优惠券
    //参数：long userId,long goodsId
    int insertCouponToOrder(Map map);
}
