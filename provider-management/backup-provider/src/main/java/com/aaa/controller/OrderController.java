package com.aaa.controller;

import base.ResultData;
import com.aaa.model.Order;
import com.aaa.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController {


    @Autowired
    private OrderService orderService;

    /**
     *            查询所有的订单
     *@author ryh
     *date 2019/10/21 22:12
     *param
     *return
     */
    @RequestMapping("/selectAllOrders")
    ResultData<Order> selectAllOrders(){
        return orderService.selectAllOrders();
    }
}
