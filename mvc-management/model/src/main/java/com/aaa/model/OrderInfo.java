package com.aaa.model;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "order_info")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class OrderInfo extends BaseModel implements Serializable {
    /**
     * 订单id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    /**
     * 管理员id
     */
    @Column(name = "m_id")
    private String mId;

    /**
     * 支付方式
     */
    @Column(name = "payment_method")
    private String paymentMethod;

    /**
     * 下单时间
     */
    @Column(name = "order_time")
    private String orderTime;

    /**
     * 付款时间
     */
    @Column(name = "payment_time")
    private String paymentTime;

    /**
     * 套餐ID
     */
    @Column(name = "set_meal")
    private String setMeal;

    /**
     * 附加服务
     */
    @Column(name = "additiona_services")
    private String additionaServices;

    /**
     * 租借天数
     */
    @Column(name = "rental_days")
    private Integer rentalDays;

    /**
     * 取车门店ID
     */
    @Column(name = "get_cat_storeId")
    private String getCatStoreid;

    /**
     * 还车门店ID
     */
    @Column(name = "return_cat_storeId")
    private String returnCatStoreid;

    /**
     * 订单总价
     */
    @Column(name = "total_price")
    private Double totalPrice;

    /**
     * 折扣
     */
    private Double discount;

    /**
     * 实付款
     */
    @Column(name = "actual_payment")
    private Double actualPayment;

    /**
     * 车辆信息评分
     */
    @Column(name = "vehicle_info")
    private String vehicleInfo;

    /**
     * 业务员服务评分
     */
    @Column(name = "service_score")
    private String serviceScore;

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