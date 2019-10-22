package com.aaa.controller;

import base.BaseController;
import base.ResultData;
import com.aaa.model.Management;
import com.aaa.service.IProjectService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import status.LoginStatus;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/20
*/
@Controller()
@Api(value = "后台登录管理", tags = "后台登录管理")
public class LoginController extends BaseController {

    @Autowired
    private IProjectService projectService;

    @RequestMapping("/turnLoginPage")
    @ApiOperation(value = "跳转登录页面", notes = "使用springmvc的controller跳转到登录页面")
    public String turnLoginPage() {
        return "login";
    }

    @RequestMapping("/turnIndexPage")
    @ApiOperation(value = "跳转index页面", notes = "使用springmvc的controller跳转index页面")
    public String turnIndexPage() {
        return "index";
    }



    @PostMapping("/login")
    @ResponseBody
    @ApiOperation(value = "执行登录操作", notes = "接收ajax的参数，并且使用shiro执行登录操作")
    public ResultData doLogin(String username,String password) {

        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        // subject.login()方法以后，会直接跳转到认证阶段
        try {
            subject.login(usernamePasswordToken);
            // 通过subject对象获取用户对象
            // 在这里获取的是值取决于SimpleAuthenticationInfo第一个参数，如果第一个参数传入的是username-->获取的是username
            // 但是如果传入的是对象--->获取的就是对象
            Management user = (Management) subject.getPrincipal();
            if (null != user) {
                // 说明已经登录成功，需要把对象返回到页面上(ajax)
                return success(user);
            } else {
                throw new UnknownAccountException();
            }
        } catch (UnknownAccountException e) {
            return failed(LoginStatus.USER_NOT_EXIST.getMsg());
        } catch (IncorrectCredentialsException e) {
            return failed(LoginStatus.PASSWORD_WRONG.getMsg());
        } catch (LockedAccountException e) {
            return failed(LoginStatus.USER_LOCKED.getMsg());
        } catch (AuthenticationException e) {
            return failed(LoginStatus.LOGOUT_WRONG.getMsg());
        }
    }
}
