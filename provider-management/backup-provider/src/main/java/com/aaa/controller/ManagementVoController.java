package com.aaa.controller;

import base.ResultData;
import com.aaa.service.ManagementVoService;
import com.aaa.vo.ManagementVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ManagementVoController {

    @Autowired
    private ManagementVoService managementVoService;


    @ResponseBody
    @RequestMapping()
    public ResultData<ManagementVo> selectManagementVo(String id){
        ResultData<ManagementVo> vo = managementVoService.selectManagementVo(id);
        return vo;
    }

}
