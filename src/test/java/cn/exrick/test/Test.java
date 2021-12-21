package cn.exrick.test;

import cn.exrick.mapper.TbCouponMapper;
import cn.exrick.pojo.front.Coupon;
import cn.exrick.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;

public class Test {

    @org.junit.Test
    public void test1(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCouponMapper tbCouponMapper = sqlSession.getMapper(TbCouponMapper.class);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("userId",63);
        hashMap.put("couponId",1);
        Coupon couponByUser = tbCouponMapper.getCouponByUser(hashMap);
        System.out.println(couponByUser);
        hashMap.put("couponId",2);
        Coupon couponByUser1 = tbCouponMapper.getCouponByUser(hashMap);
        System.out.println(couponByUser1);
    }
}
