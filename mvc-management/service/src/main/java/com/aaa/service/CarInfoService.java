package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.CarInfoMapper;
import com.aaa.model.CarInfo;

import com.aaa.page.PageInfos;
import com.aaa.vo.VoCarInfo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.page.PageMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import status.StatusEnum;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Service
public class CarInfoService extends BaseService<CarInfo> {
    @Autowired
    private CarInfoMapper carInfoMapper;

    @Override
    public Mapper<CarInfo> getMapper() {
        return carInfoMapper;
    }

    /**
     * @Description: 根据条件查询车辆信息
     * @Param:
     * @return:
     * @Author: 栗翱
     * @Date: 2019/10/22
     */
//    public ResultData queryCarInfo(VoCarInfo voCarInfo){
//        ResultData resultData = new ResultData<T>();
//        try {
//
//            List<VoCarInfo> voCarInfos = carInfoMapper.queryCarInfo(voCarInfo);


//            //分页
//            PageHelper.startPage(1, 3);
//            PageInfo<VoCarInfo> pageInfo = new PageInfo<VoCarInfo>(voCarInfos);
//            pageInfo.setTotal(carInfoMapper.queryCarInfoConut(voCarInfo));


//            //查询到值
////            if(voCarInfos.size()>0){
////                resultData.setCode(StatusEnum.EXIST.getCode());
////                resultData.setMsg(StatusEnum.EXIST.getMsg());
////                resultData.setData(voCarInfos);
////            }else{
////                resultData.setCode(StatusEnum.NOT_EXIST.getCode());
////                resultData.setMsg(StatusEnum.NOT_EXIST.getMsg());
////            }
////        }catch (Exception e){
////            e.printStackTrace();
////        }
////
////
////        return resultData;
////    }
}
