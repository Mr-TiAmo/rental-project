package com.aaa.controller;

import base.ResultData;
import com.aaa.model.Management;
import com.aaa.service.ManagementLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/19
*/
@RestController
public class LoginController {

    @Autowired
    private ManagementLoginService loginService;

    /** 
    * @Description: 通过用户名查询management信息 
    * @Param:  
    * @return:  
    * @Author: 栗翱
    * @Date: 2019/10/19 
    */ 
    @RequestMapping("/queryManageByUsername")
    ResultData<Management> selectUserByUsername(@RequestParam("username")String username){
        return loginService.selectUserByUsername(username);
    }
}
