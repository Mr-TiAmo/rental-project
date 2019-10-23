package com.aaa.vo;

import lombok.AllArgsConstructor;
import lombok.Cleanup;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class ManagementVo implements Serializable {

    //id
    @Id
    private String id;

    @Column(name = "username")
    private String  username;

    @Column(name = "job_number")
    private String jobnumber;

    @Column(name = "password")
    private String password;

    @Column(name = "sex")
    private String sex;

    @Column(name = "gener")
    private String gener;

    @Column(name ="create_time")
    private String createTime;

    @Column(name="update_time")
    private String updateTime;

    @Column(name = "store_location")
    private String storeLocation;
}
