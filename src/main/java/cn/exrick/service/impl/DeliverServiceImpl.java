package cn.exrick.service.impl;

import cn.exrick.mapper.TbDeliverMapper;
import cn.exrick.pojo.front.Deliver;
import cn.exrick.pojo.front.DeliverOrder;
import cn.exrick.service.DeliverService;
import cn.exrick.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class DeliverServiceImpl implements DeliverService {
    @Autowired
    private TbDeliverMapper tbDeliverMapper;

    @Override
    public List<DeliverOrder> getUnfinishedOrderList() {
        return tbDeliverMapper.getUnfinishedOrderList();
    }

    @Override
    public List<DeliverOrder> getOrderDetail(String orderId) {
        return tbDeliverMapper.getOrderDetail(orderId);
    }

    @Override
    public List<DeliverOrder> getHistoryOrder() {
        return tbDeliverMapper.getHistoryOrder();
    }

    @Override
    public int updateOrderStatus(String orderId) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("orderId",orderId);
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TbDeliverMapper mapper = sqlSession.getMapper(TbDeliverMapper.class);
        mapper.updateOrderStatus(hashMap);
        sqlSession.commit();
        return 1;
    }

    @Override
    public Deliver getDeliverInfo() {
        return tbDeliverMapper.getDeliverInfo();
    }
}
