package com.aaa.base;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class BaseModel {
    @NotNull(message = "主键不能为空")
    @Size(max = 256, message = "主键最大不能超过256位")
    private String id;

    @Column(name = "create_time")
    private String createTime;

    @Column(name = "update_time")
    private String updateTime;

    @Size(max = 100, message = "冗余字段长度不能超过100位")
    private String redundancy;
}
