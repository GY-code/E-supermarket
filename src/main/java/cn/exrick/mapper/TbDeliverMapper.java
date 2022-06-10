package cn.exrick.mapper;

import cn.exrick.pojo.front.Deliver;
import cn.exrick.pojo.front.DeliverOrder;

import java.util.List;
import java.util.Map;

public interface TbDeliverMapper {
    //获取骑手可接订单
    List<DeliverOrder> getUnfinishedOrderList();

    //骑手端根据订单Id获取订单详情
    List<DeliverOrder> getOrderDetail(String orderId);

    //根据骑手获取该骑手的历史订单
    List<DeliverOrder> getHistoryOrder();

    //骑手接单
    int updateOrderStatus(Map map);

    //骑手信息
    Deliver getDeliverInfo();
}
