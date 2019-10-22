package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.OrderMapper;
import com.aaa.model.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import status.StatusEnum;
import tk.mybatis.mapper.common.Mapper;
import utils.StringUtil;

import java.util.List;

@Service
public class OrderService extends BaseService<Order> {


    @Autowired
    private OrderMapper orderMapper;


    public Mapper<Order> getMapper() {
        return null;
    }

    /*
     *              查询所有的订单
     *@author ryh
     *date 2019/10/21 22:01
     *param
     *return
     */
    public ResultData<Order> selectAllOrders(){
        ResultData resultData = new ResultData();
        Order order = new Order();
        try{
            List<Order> orders = super.selectAll();
            if(null !=orders){
                resultData.setCode(StatusEnum.SUCCESS.getCode());
                resultData.setMsg(StatusEnum.SUCCESS.getMsg());
                resultData.setData(orders);
            }else{
                resultData.setCode(StatusEnum.FAILED.getCode());
                resultData.setMsg(StatusEnum.FAILED.getMsg());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return resultData;
    }







}
