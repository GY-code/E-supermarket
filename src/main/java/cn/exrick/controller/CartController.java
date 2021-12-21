package cn.exrick.controller;


import cn.exrick.pojo.common.Result;
import cn.exrick.pojo.front.Cart;
import cn.exrick.pojo.front.CartProduct;
import cn.exrick.service.CartService;
import cn.exrick.utils.ResultUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(description = "购物车")
public class CartController {

    @Autowired
    private CartService cartService;

    @RequestMapping(value = "/member/addCart",method = RequestMethod.POST)
    @ApiOperation(value = "添加购物车商品")
    public Result<Object> addCart(@RequestBody Cart cart){
        int result=cartService.addCart(cart.getCartId(),cart.getGoodsId(),cart.getNum());
        return new ResultUtil<Object>().setData(result);
    }

    @RequestMapping(value = "/member/cartList",method = RequestMethod.POST)
    @ApiOperation(value = "获取购物车商品列表")
    public Result<List<CartProduct>> getCartList(@RequestBody Cart cart){

        List<CartProduct> list=cartService.getCartList(cart.getCartId());
        return new ResultUtil<List<CartProduct>>().setData(list);
    }

    @RequestMapping(value = "/member/cartEdit",method = RequestMethod.POST)
    @ApiOperation(value = "编辑购物车商品")
    public Result<Object> updateCartNum(@RequestBody Cart cart){

        int result=cartService.updateCartNum(cart.getCartId(),cart.getGoodsId(),cart.getNum(),cart.getChecked());
        return new ResultUtil<Object>().setData(result);
    }

    @RequestMapping(value = "/member/editCheckAll",method = RequestMethod.POST)
    @ApiOperation(value = "是否全选购物车商品")
    public Result<Object> editCheckAll(@RequestBody Cart cart){

        int result=cartService.checkAll(cart.getCartId(),cart.getChecked());
        return new ResultUtil<Object>().setData(result);
    }

    @RequestMapping(value = "/member/cartDel",method = RequestMethod.POST)
    @ApiOperation(value = "删除购物车商品")
    public Result<Object> deleteCartItem(@RequestBody Cart cart){

        int result=cartService.deleteCartItem(cart.getCartId(),cart.getGoodsId());
        return new ResultUtil<Object>().setData(result);
    }

    @RequestMapping(value = "/member/delCartChecked",method = RequestMethod.POST)
    @ApiOperation(value = "删除购物车选中商品")
    public Result<Object> delChecked(@RequestBody Cart cart){

        cartService.delChecked(cart.getCartId());
        return new ResultUtil<Object>().setData(null);
    }
}
