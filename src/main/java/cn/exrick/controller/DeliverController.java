package cn.exrick.controller;

import cn.exrick.pojo.common.Result;
import cn.exrick.pojo.front.Coupon;
import cn.exrick.pojo.front.Deliver;
import cn.exrick.pojo.front.DeliverOrder;
import cn.exrick.service.DeliverService;
import cn.exrick.utils.ResultUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@Api(description = "骑手")
public class DeliverController {

    @Autowired
    private DeliverService deliverService;

    @RequestMapping(value = "/deliver/getOrderList", method = RequestMethod.GET)
    @ApiOperation(value = "获取可接订单")
    public Result<List<DeliverOrder>> getOrderList() {
        List<DeliverOrder> list = deliverService.getUnfinishedOrderList();
        return new ResultUtil<List<DeliverOrder>>().setData(list);
    }

    @RequestMapping(value = "/deliver/getOrderDetail", method = RequestMethod.GET)
    @ApiOperation(value = "获取订单详情")
    public Result<List<DeliverOrder>> getOrderDetail(String orderId) {
        List<DeliverOrder> list = deliverService.getOrderDetail(orderId);
        return new ResultUtil<List<DeliverOrder>>().setData(list);
    }

    @RequestMapping(value = "/deliver/getHistoryOrder", method = RequestMethod.GET)
    @ApiOperation(value = "获取历史订单")
    public Result<List<DeliverOrder>> getHistoryOrder() {
        List<DeliverOrder> list = deliverService.getHistoryOrder();
        return new ResultUtil<List<DeliverOrder>>().setData(list);
    }

    @RequestMapping(value = "/deliver/createOrder", method = RequestMethod.GET)
    @ApiOperation(value = "骑手接单")
    public Result<Object> createOrder(String orderId) {
        boolean result = true;
        int i = deliverService.updateOrderStatus(orderId);
        if (i != 1){
            result =  false;
        }
        return new ResultUtil<Object>().setData(result);
    }

    @RequestMapping(value = "/deliver/getDeliverInfo", method = RequestMethod.GET)
    @ApiOperation(value = "骑手信息")
    public Result<Deliver> getDeliverInfo() {
        Deliver deliverInfo = deliverService.getDeliverInfo();
        return new ResultUtil<Deliver>().setData(deliverInfo);
    }
}
