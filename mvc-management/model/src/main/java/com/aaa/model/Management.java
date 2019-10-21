package com.aaa.model;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/19
*/
@Table(name = "management")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Management extends BaseModel implements Serializable {


    /**
     * 管理员的工号
     */
    @Column(name = "job_number")
    private String jobNumber;

    /**
     * 管理员名称
     */
    private String username;

    /**
     * 盐值
     */
    private String salt;
    /**
     * 管理员密码
     */
    private String password;

    /**
     * 1为男，2为女
     */
    private Integer sex;

    /**
     * 1为业务员，2为管理员
     */
    private Integer genre;

    /**
     * 管理员所属门店的id，外键
     */
    @Column(name = "store_id")
    private String storeId;


}