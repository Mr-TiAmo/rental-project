package com.aaa.model;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Car extends BaseModel implements Serializable {

    /**
     * 车辆名称
     */
    private String name;

    /**
     * 租车费用基数
     */
    private Double charge;

    /**
     * 汽车图片路径
     */
    @Column(name = "pic_path")
    private String picPath;

    /**
     * 变速箱类型<手动/自动>
     */
    @Column(name = "dict_car_operation_id")
    private Integer dictCarOperationId;

    /**
     * 汽车座位数
     */
    @Column(name = "dict_car_space_id")
    private Integer dictCarSpaceId;

}