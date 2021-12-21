package cn.exrick.service.impl;

import cn.exrick.mapper.TbCouponMapper;
import cn.exrick.pojo.front.Coupon;
import cn.exrick.service.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class CouponServiceImpl implements CouponService{

    @Autowired
    private TbCouponMapper tbCouponMapper;

    @Override
    public List<Coupon> getCouponList(long userId) {
        return tbCouponMapper.getCouponList(userId);
    }

    @Override
    public List<Coupon> getAllCouponList() {
        return tbCouponMapper.getAllCouponList();
    }

    @Override
    public int addCoupon(long userId, long couponId) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("userId",userId);
        hashMap.put("couponId",couponId);
        //先查看有没有该优惠券
        Coupon coupon = tbCouponMapper.getCouponByUser(hashMap);
        if (coupon == null){
            tbCouponMapper.addCoupon(hashMap);
        }else {
            tbCouponMapper.updateCouponCustomer(hashMap);
        }
        return 1;
    }

    @Override
    public Coupon getPerfectCoupon(long userId, long goodsId) {
        return null;
    }

    @Override
    public int insertCouponToOrder(String orderId, Integer[] couponIdList) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("orderId",orderId);
        for (Integer integer : couponIdList) {
            hashMap.put("couponId",integer);
            if(tbCouponMapper.insertCouponToOrder(hashMap) != 1){
                return 0;
            }
        }
        return 1;
    }
}
