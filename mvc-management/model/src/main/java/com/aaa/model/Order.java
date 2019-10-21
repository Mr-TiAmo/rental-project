package com.aaa.model;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "order")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Order extends BaseModel implements Serializable {
    /**
     * 订单id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    /**
     * 用户id
     */
    @Column(name = "user_id")
    private String userId;

    /**
     * 车辆id
     */
    @Column(name = "car_id")
    private String carId;

    /**
     * 订单编号
     */
    @Column(name = "order_number")
    private String orderNumber;

    /**
     * 取车时间
     */
    @Column(name = "get_cat_time")
    private String getCatTime;

    /**
     * 还车时间
     */
    @Column(name = "return_cat_time")
    private String returnCatTime;

    /**
     * 订单状态
     */
    @Column(name = "order_status")
    private String orderStatus;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private String createTime;

    /**
     * 修改时间
     */
    @Column(name = "update_time")
    private String updateTime;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 冗余字段
     */
    private String redundance;



}