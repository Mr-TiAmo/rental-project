package com.aaa.service;

import com.aaa.base.BaseService;
import com.aaa.mapper.OrderMapper;
import com.aaa.model.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;

@Service
public class OrderService extends BaseService<Order> {


    @Autowired
    private OrderMapper orderMapper;


    public Mapper<Order> getMapper() {
        return null;
    }









}
