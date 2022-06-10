package cn.exrick.service.impl;

import cn.exrick.mapper.TbCouponMapper;
import cn.exrick.pojo.front.Coupon;
import cn.exrick.service.CouponService;
import cn.exrick.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    public int addCoupon(long userId, long couponId,int point) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("userId",userId);
        hashMap.put("couponId",couponId);
        hashMap.put("point",point);
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCouponMapper mapper = sqlSession.getMapper(TbCouponMapper.class);
        //先查看有没有该优惠券
        Coupon coupon = tbCouponMapper.getCouponByUser(hashMap);
        //修改用户积分
        mapper.updatePoint(hashMap);
        if (coupon == null){
            mapper.addCoupon(hashMap);
            sqlSession.commit();
        }else {
            mapper.updateCouponCustomer(hashMap);
            sqlSession.commit();
        }
        return 1;
    }

    @Override
    public List<Coupon> getPerfectCoupon(long userId)
    {
        ArrayList<Coupon> couponList = new ArrayList<>();
        //先获取用户购物车中类别list
        List<Long> categoryIdList = tbCouponMapper.getCategoryByUserId(userId);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("userId",userId);
        for (int i = 0; i < categoryIdList.size(); i++) {
            hashMap.put("categoryId",categoryIdList.get(i));
            //获取该类别对应的总价格
            Double price = tbCouponMapper.getPrice(hashMap);
            hashMap.put("price",price);
            //根据价格获取可用的优惠券的列表
            List<Long> usedCouponList = tbCouponMapper.getUsedCoupon(hashMap);
            //获取最优的优惠券的ID，并将可用列表中的优惠券的IdRec属性修改为推荐
//            Coupon perfectCoupon = new Coupon();
            Long perfectCoupon = tbCouponMapper.getPerfectCoupon(hashMap);
//            perfectCoupon.setCouponId(perfectCoupon1);
            //根据可用的列表将对应的优惠券的信息查出来
            for (int j = 0; j < usedCouponList.size(); j++) {
                Coupon couponById = tbCouponMapper.getCouponById(usedCouponList.get(j));
                //设置是否推荐
                couponById.setRec(couponById.getCouponId() == perfectCoupon);
                couponList.add(couponById);
            }
        }
        return couponList;
    }

    @Override
    public int insertCouponToOrder(String orderId, ArrayList<Integer> couponIdList) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("orderId",orderId);
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbCouponMapper mapper = sqlSession.getMapper(TbCouponMapper.class);
        for (Integer integer : couponIdList) {
            hashMap.put("couponId",integer);
            mapper.insertCouponToOrder(hashMap);
            sqlSession.commit();
        }
        return 1;
    }

    @Override
    public int getPoint(long couponId) {
        return tbCouponMapper.getPoint(couponId).getPoint();
    }
}
