package com.aaa.controller;

import com.aaa.service.IProjectService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;


@RestController
@Api(value = "订单管理",tags = "订单管理")
public class OrderController {

    @Autowired
    private IProjectService iProjectService;




}
