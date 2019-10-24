package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.ManagementVoMapper;
import com.aaa.vo.ManagementVo;
import com.sun.org.apache.regexp.internal.RE;
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

    //根据id查看management信息
    public ResultData<ManagementVo> selectManagementVo(String id){
        ResultData<ManagementVo> data = new ResultData<ManagementVo>();
        ManagementVo vo = managementVoMapper.selectManagementVo(id);
        System.out.println(vo);
        try {
            if (null!=vo){
                data.setCode(StatusEnum.SUCCESS.getCode());
                data.setMsg(StatusEnum.SUCCESS.getMsg());
                data.setData(vo);
                System.out.println(data);
            }else {
                data.setCode(StatusEnum.FAILED.getCode());
                data.setMsg(StatusEnum.FAILED.getMsg());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
            return data;

    }

    //根据id修改management的password
    public ResultData<Integer> updateManagementPswd(String password,String id){
        Integer integer = managementVoMapper.updateManagementPswd(password, id);
        System.out.println(integer);
        ResultData<Integer> data = new ResultData<Integer>();
        try {
            if (integer!=null){
                data.setCode(StatusEnum.SUCCESS.getCode());
                data.setMsg(StatusEnum.SUCCESS.getMsg());
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
