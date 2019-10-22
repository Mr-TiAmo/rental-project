package com.aaa.service;

import base.ResultData;
import com.aaa.fallback.ProjectServiceFallBack;
import com.aaa.model.Management;
import com.aaa.model.Order;
import com.aaa.model.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@FeignClient(value="springcloud-provider",fallbackFactory = ProjectServiceFallBack.class)
public interface IProjectService {

    @RequestMapping("/userAll")
    List<User> selectAllUsers();

    @RequestMapping("/queryManageByUsername")
    ResultData<Management> selectUserByUsername(@RequestParam("username")String username);

    @RequestMapping("/queryUserByUsername")
    ResultData<User> selectUserByUsernameAndPassword(@RequestBody User user);
    @RequestMapping("/selectAllOrders")
    List<Order> selectAllOrders();


}

