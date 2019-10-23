package com.aaa.controller;

import com.aaa.service.CarInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/22
*/
@RestController
public class CarInfoController {

    @Autowired
    private CarInfoService carInfoService;


}
