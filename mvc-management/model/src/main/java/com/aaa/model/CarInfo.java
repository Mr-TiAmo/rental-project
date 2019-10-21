package com.aaa.model;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "car_info")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class CarInfo extends BaseModel implements Serializable {

    /**
     * 车牌号
     */
    @Column(name = "plate_numbers")
    private String plateNumbers;

    /**
     * 是否有天窗（0假/1真）
     */
    @Column(name = "is_scuttle")
    private Integer isScuttle;

    /**
     * 字典表的外键：燃料类型<汽油/柴油>
     */
    @Column(name = "dict_car_fuel_id")
    private Integer dictCarFuelId;

    /**
     * 字典表的外键：驱动方式
     */
    @Column(name = "dict_car_drive_id")
    private Integer dictCarDriveId;

    /**
     * 门店信息表的外键
     */
    @Column(name = "dict_car_store_id")
    private Integer dictCarStoreId;

    /**
     * 字典表的外键：车辆状态
     */
    @Column(name = "dict_car_status_id")
    private Integer dictCarStatusId;

    /**
     * 字典表的外键：颜色
     */
    @Column(name = "dict_car_color_id")
    private Integer dictCarColorId;

    /**
     * 字典表的外键：排量
     */
    @Column(name = "dict_car_power_id")
    private Integer dictCarPowerId;

    /**
     * 字典表的外键：品牌
     */
    @Column(name = "dict_car_brand_id")
    private Integer dictCarBrandId;

    /**
     * 字典表的外键;款式
     */
    @Column(name = "dict_car_style_id")
    private Integer dictCarStyleId;

}