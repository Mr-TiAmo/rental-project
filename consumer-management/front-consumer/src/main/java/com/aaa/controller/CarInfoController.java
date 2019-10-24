package com.aaa.controller;

import base.BaseController;
import base.ResultData;
import com.aaa.page.PageInfos;
import com.aaa.service.IProjectService;
import com.aaa.vo.VoCarInfo;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/22
*/
@Controller
@RequestMapping("/front")
public class CarInfoController extends BaseController {

    @Autowired
    private IProjectService projectService;
    /**
     * 通过条件查询carInfo
     * @param
     * @return
     */
    @PostMapping("/queryCarByCondition")
    @ApiOperation(value = "按条件查询carInfo", notes= "按条件查询carInfo")
    @ResponseBody
    public ResultData queryCarInfo(String pageNum,String chooseLocation, String getTime, String returnTime){
        try {
            URLDecoder.decode(chooseLocation, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        String location = chooseLocation.replaceAll("/", "");
        VoCarInfo voCarInfo = new VoCarInfo();
        voCarInfo.setChooseLocation(location).setGetTime(getTime).setReturnTime(returnTime).setPageNum(Integer.parseInt(pageNum.trim()));
        System.out.println(chooseLocation);
        ResultData resultData = projectService.queryCarInfo(voCarInfo);
        System.out.println(resultData.getData());
        return resultData;
    }

    @GetMapping("/turnCarPage")
    @ApiOperation(value = "跳转car页面", notes = "使用springmvc的controller跳转到car页面")
    public String turnCarPage() {
        return "car";
    }

    @GetMapping("/turnCarDetailPage")
    @ApiOperation(value = "跳转car页面", notes = "使用springmvc的controller跳转到car页面")
    public String turnCarDetailPage() {
        return "car_detail";
    }
}
