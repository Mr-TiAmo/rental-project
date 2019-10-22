package com.aaa.controller;

import base.ResultData;
import com.aaa.model.Management;
import com.aaa.model.User;
import com.aaa.service.ManagementLoginService;
import com.aaa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
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
    private UserService loginService;

    /** 
    * @Description: 通过用户名查询user信息
    * @Param:  
    * @return:  
    * @Author: 栗翱
    * @Date: 2019/10/19 
    */ 
    @RequestMapping("/queryUserByUsername")
    public ResultData<User> selectByUsername(@RequestBody User user){
        return loginService.selectUserByUsernameAndPassword(user);
    }
}
