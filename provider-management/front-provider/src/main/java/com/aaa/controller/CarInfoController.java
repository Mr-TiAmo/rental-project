package com.aaa.controller;

import base.ResultData;
import com.aaa.service.CarInfoService;
import com.aaa.vo.VoCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/queryCarByCondition")
    public ResultData queryCarInfo(@RequestBody VoCarInfo voCarInfo){
        return carInfoService.queryCarInfo(voCarInfo);
    }

    @RequestMapping("/selectCarById")
    ResultData<VoCarInfo> selectCarById(@RequestParam("id")String id){
        return carInfoService.selectCarById(id);
    };
}
