package cn.exrick.service;

import cn.exrick.pojo.front.Deliver;
import cn.exrick.pojo.front.DeliverOrder;

import java.util.List;

public interface DeliverService {
    //骑手端获取可用订单
    List<DeliverOrder> getUnfinishedOrderList();

    //获取订单详情
    List<DeliverOrder> getOrderDetail(String orderId);

    //获取历史订单
    List<DeliverOrder> getHistoryOrder();

    //骑手接单
    int updateOrderStatus(String orderId);

    //获取骑手信息
    Deliver getDeliverInfo();
}
