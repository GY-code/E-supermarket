package cn.exrick.controller;

import cn.exrick.pojo.common.Result;
import cn.exrick.pojo.front.Coupon;
import cn.exrick.service.CouponService;
import cn.exrick.utils.ResultUtil;
import com.alibaba.fastjson.JSONObject;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Api(description = "优惠券")
public class CouponController {
    @Autowired
    private CouponService couponService;

    @RequestMapping(value = "/coupon/getCouponList", method = RequestMethod.GET)
    @ApiOperation(value = "获得用户所有的优惠券信息")
    public Result<List<Coupon>> getCouponList(long userId) {
        List<Coupon> list = couponService.getCouponList(userId);
        return new ResultUtil<List<Coupon>>().setData(list);
    }

    @RequestMapping(value = "/coupon/getAllCouponList", method = RequestMethod.GET)
    @ApiOperation(value = "获取所有的优惠券信息")
    public Result<List<Coupon>> getAllCouponList() {
        List<Coupon> list = couponService.getAllCouponList();
        return new ResultUtil<List<Coupon>>().setData(list);
    }

    @RequestMapping(value = "/coupon/addCoupon", method = RequestMethod.GET)
    @ApiOperation(value = "用户兑换优惠券添加优惠券数量")
    public Result<HashMap<String,Object>> addCoupon(long userId, long couponId) {
        HashMap<String, Object> result = new HashMap<>();
        int i = couponService.addCoupon(userId, couponId);
        if (i == 1){
            result.put("success",true);
        }else{
            result.put("success",false);
        }
        return new ResultUtil<HashMap<String,Object>>().setData(result);
    }

    @RequestMapping(value = "/coupon/getPerfectCoupon", method = RequestMethod.GET)
    @ApiOperation(value = "获取最优优惠券的推荐")
    public Result<Coupon> getPerfectCoupon(long userId, long category) {
        Coupon coupon = couponService.getPerfectCoupon(userId, category);
        return new ResultUtil<Coupon>().setData(coupon);
    }

    @RequestMapping(value = "/coupon/insertCouponToOrder", method = RequestMethod.POST)
    @ApiOperation(value = "订单提交后将优惠券使用的信息记录起来")
    public Result<HashMap<String,Object>> insertCouponToOrder(String orderId,Integer[] couponIdList) {
        HashMap<String, Object> result = new HashMap<>();
        int i = couponService.insertCouponToOrder(orderId, couponIdList);
        if (i == 1){
            result.put("success",true);
        }else{
            result.put("success",false);
        }
        return new ResultUtil<HashMap<String,Object>>().setData(result);
    }
}
