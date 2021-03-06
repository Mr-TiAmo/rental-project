package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.OrderInfoMapper;
import com.aaa.model.CarInfo;
import com.aaa.model.OrderInfo;
import com.aaa.page.PageInfos;
import com.aaa.vo.VoCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;

@Service
public class OrderInfoService extends BaseService<OrderInfo> {

    @Autowired
    private OrderInfoMapper orderInfoMapper;


    @Override
    public Mapper<OrderInfo> getMapper() {
        return orderInfoMapper;
    }
}
