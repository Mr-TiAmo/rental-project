package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.CarInfoMapper;
import com.aaa.model.CarInfo;

import com.aaa.page.PageInfos;
import com.aaa.vo.VoCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;

@Service
public class CarInfoService extends BaseService<CarInfo> {
    @Autowired
    private CarInfoMapper carInfoMapper;

    @Override
    public Mapper<CarInfo> getMapper() {
        return carInfoMapper;
    }

    public ResultData<VoCarInfo> queryCarInfo(VoCarInfo voCarInfo){

      return null;
    }
}
