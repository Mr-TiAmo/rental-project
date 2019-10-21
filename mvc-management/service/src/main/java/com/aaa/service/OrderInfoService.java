package com.aaa.service;

import com.aaa.base.BaseService;
import com.aaa.mapper.OrderInfoMapper;
import com.aaa.model.OrderInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;

@Service
public class OrderInfoService extends BaseService<OrderInfo> {

    @Autowired
    private OrderInfoMapper orderInfoMapper;


    public Mapper<OrderInfo> getMapper() {
        return null;
    }
}
