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
    public ResultData queryCarInfo(VoCarInfo voCarInfo){
        ResultData resultData = new ResultData<>();
        List<VoCarInfo> voCarInfos = null;

        try {

           //设置分页的参数
            Integer pageNum = voCarInfo.getPageNum();
            Integer pageSize = voCarInfo.getPageSize();
            if(null == pageNum ){
                pageNum = 1;
            }
            if(null == pageSize){
                pageSize = 10;
            }



            PageHelper.startPage(pageNum, pageSize);
            voCarInfos = carInfoMapper.queryCarInfo(voCarInfo);
            PageInfo<VoCarInfo> pageInfo = new PageInfo<VoCarInfo>(voCarInfos);
            pageInfo.setTotal(voCarInfos.size());



            //查询到值
            if(voCarInfos.size()>0){
                resultData.setCode(StatusEnum.EXIST.getCode());
                resultData.setMsg(StatusEnum.EXIST.getMsg());
                resultData.setData(pageInfo);

            }else{
                resultData.setCode(StatusEnum.NOT_EXIST.getCode());
                resultData.setMsg(StatusEnum.NOT_EXIST.getMsg());
            }
        }catch (Exception e){
            e.printStackTrace();
        }


        return resultData;
    }
}
