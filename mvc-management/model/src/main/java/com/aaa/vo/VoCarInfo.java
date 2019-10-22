package com.aaa.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import java.io.Serializable;
/**
* @Description: 用于查询的车辆的vomodel
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/22
*/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class VoCarInfo implements Serializable {
    /**
     * 车辆的id
     */
    private String id;
    /**
     * 车辆的名称
     */
    private String name;
    /**
     * 车辆的日租费用
     */
    private Double charge;
    /**
     * 车辆的图片路径
     */
    @Column(name ="pic_path")
    private String picPath;
    /**
     * 车辆的变速箱类型
     */
    @Column(name = "name1")
    private String operation;
    /**
     * 车辆的座位数
     */
    @Column(name = "name2")
    private String space;
    /**
     * 车辆的燃料类型
     */
    @Column(name = "name3")
    private String fuel;
    /**
     * 车辆的驱动方式
     */
    @Column(name = "name4")
    private String drive;
    /**
     * 车辆的租赁状态
     */
    @Column(name = "name5")
    private String carStatus;
    /**
     * 车辆的颜色
     */
    @Column(name = "name6")
    private String color;

    /**
     * 车辆的排量
     */
    @Column(name = "name7")
    private String power;

    /**
     * 车辆的品牌
     */
    @Column(name = "name8")
    private String brand;
    /**
     * 车辆的款式
     */
    @Column(name = "name9")
    private String style;
    /**
     * 车辆的门店地址
     */
    @Column(name = "store_location")
    private String storeLocation;



}
