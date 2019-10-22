package com.aaa.controller;

import base.BaseController;
import base.ResultData;
import com.aaa.model.User;
import com.aaa.service.IProjectService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import status.LoginStatus;
import utils.CookieUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/21
*/
@Controller
@RequestMapping("/front")
public class LoginController extends BaseController {

    @Autowired
    private IProjectService projectService;

    @RequestMapping("/turnLoginPage")
    @ApiOperation(value = "跳转登录页面", notes = "使用springmvc的controller跳转到登录页面")
    public String turnLoginPage() {
        return "login";
    }

    @GetMapping("/turnCarPage")
    @ApiOperation(value = "跳转car页面", notes = "使用springmvc的controller跳转到car页面")
    public String turnCarPage() {
        return "car";
    }

    @RequestMapping("/")
    @ApiOperation(value = "跳转index页面", notes = "使用springmvc的controller跳转index页面")
    public String turnIndexPage() {
        return "index";
    }

    @PostMapping("/login")
    @ResponseBody
    @ApiOperation(value = "执行登录操作", notes = "接收ajax的参数，并且使用登录操作")
    public ResultData doLogin(String phone, String password, HttpServletRequest request, HttpServletResponse response) {
        User user = new User();
        user.setPassword(password).setPhone(phone);
        ResultData<User> resultData = projectService.selectUserByUsernameAndPassword(user);

        //登录成功，放入session
        if(LoginStatus.LOGIN_SUCCESS.getCode().equals(resultData.getCode())){
            CookieUtil.setCookie(request, response, "COOKIE_KEY", resultData.getData().getUsername());
        }
        return resultData;

    }
}
