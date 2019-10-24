package com.aaa.vo;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
/**
* @Description: 订单视图
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/24
*/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class OrderVo extends BaseModel implements Serializable {
    /**
     * 租赁车辆的id
     */
    private String carId;
    /**
     * 支付方式
     */
    private String payType;

    /**
     * 附加服务
     */
    private String addService;
    /**
     * 押金
     */
    private String cashPledge;
    /**
     * 总费用
     */
    private String totalMoney;
    /**
     * 套餐类型
     */
    private String setMeal;

    private String getTime;

    private String returnTime;

    private String location;

}
