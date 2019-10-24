package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.ManagementVoMapper;
import com.aaa.vo.ManagementVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import status.StatusEnum;
import tk.mybatis.mapper.common.Mapper;

@Service
public class ManagementVoService extends BaseService {

    @Autowired
    private ManagementVoMapper managementVoMapper;


    public Mapper getMapper() {
        return null;
    }

    public ResultData<ManagementVo> selectManagementVo(String id){
        ResultData<ManagementVo> data = new ResultData<ManagementVo>();
        ManagementVo vo = managementVoMapper.selectManagementVo(id);
        System.out.println(vo);
        try {
            if (null!=vo){
                data.setCode(StatusEnum.SUCCESS.getCode());
                data.setMsg(StatusEnum.SUCCESS.getMsg());
                data.setData(vo);
            }else {
                data.setCode(StatusEnum.FAILED.getCode());
                data.setMsg(StatusEnum.FAILED.getMsg());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
            return data;

    }
}
