package com.aaa.vo;


import com.aaa.page.PageInfos;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import javax.persistence.Table;
import java.io.Serializable;
/**
* @Description: 用于查询的车辆的vomodel
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/22
*/
@Table(name="vocarinfo")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class VoCarInfo  implements Serializable {

    /**
     * 当前页码数
     */
    private Integer pageNum;

    /**
     * 每一页显示的条数
     */
    private Integer pageSize;
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

    private String operation;
    /**
     * 车辆的座位数
     */

    private String space;
    /**
     * 车辆的燃料类型
     */

    private String fuel;
    /**
     * 车辆的驱动方式
     */

    private String drive;
    /**
     * 车辆的租赁状态
     */

    private String carStatus;
    /**
     * 车辆的颜色
     */

    private String color;

    /**
     * 车辆的排量
     */

    private String power;

    /**
     * 车辆的品牌
     */

    private String brand;
    /**
     * 车辆的款式
     */

    private String style;
    /**
     * 车辆的门店地址
     */
    @Column(name = "store_location")
    private String storeLocation;

    /**
     * 套餐类型
     */
    private String setMeal;

    /**
     * 按条件查询的位置
     */
    private String chooseLocation;

    /**
     * 按条件查询的取车时间
     */
    private String getTime;
    /**
     * 按条件查询的还车时间
     */
    private String returnTime;

}
