package com.aaa.controller;

import base.ResultData;
import com.aaa.service.IProjectService;
import com.aaa.vo.ManagementVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Api(value = "後台個人信息查询，修改密码",tags = "後台個人信息查询，修改密码")
@Controller
public class ManagementVoController {

    @Autowired
    private IProjectService iProjectService;

    @ApiOperation(value = "跳转个人页面",notes = "使用springmvc的controller跳转到个人页面")
    @RequestMapping("tiaozhuan")
    public String tiao(){
        return "userInfo";
    }


    @RequestMapping()
    public ResultData<ManagementVo> selectManagementVo(@RequestParam("id") String id){
        ResultData<ManagementVo> resultData = iProjectService.selectManagementVo(id);
        return resultData;
    }



}
