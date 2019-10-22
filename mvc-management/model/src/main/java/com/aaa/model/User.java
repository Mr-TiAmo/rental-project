package com.aaa.model;


import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Table;
import java.io.Serializable;

/** 
* @Description:  
* @Param:  
* @return:  
* @Author: 栗翱
* @Date: 2019/10/21 
*/ 
@Table(name = "user")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class User extends BaseModel implements Serializable {


    /**
     * 用户手机号
     */
    private String phone;

    /**
     * 用户昵称
     */
    private String username;

    /**
     * 用户登陆密码
     */
    private String password;

    /**
     * 盐值
     */
    private String salt;



}