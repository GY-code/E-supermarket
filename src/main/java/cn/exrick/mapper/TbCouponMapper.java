package cn.exrick.mapper;

import cn.exrick.pojo.front.Coupon;

import java.util.HashMap;
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
    Long getPerfectCoupon(Map map);

    //根据用户Id获取购物车中

    //订单使用的优惠券
    //参数：long userId,long goodsId
    int insertCouponToOrder(Map map);

    //根据用户Id去查对应购物车的商品类别
    List<Long> getCategoryByUserId(long userId);

    //根据优惠券Id获取优惠券
    Coupon getCouponById(long couponId);

    //根据用户Id和类别Id获取价格
    Double getPrice(Map map);

    //根据用户Id和价格推荐可用的优惠券
    List<Long> getUsedCoupon(Map map);

    //根据优惠券Id获取优惠券的积分
    Coupon getPoint(long couponId);

    //修改用户积分
    int updatePoint(Map map);
}
