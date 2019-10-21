package com.aaa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Column;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Dictionary {

    /**
     * 字典code
     */
    private String code;

    /**
     * 字典名称
     */
    private String name;

    /**
     * 字典类型code
     */
    @Column(name = "type_code")
    private Integer typeCode;

    /**
     * 字典类型名称
     */
    @Column(name = "type_name")
    private String typeName;

    /**
     * 自连接(父类的id)
     */
    private String pid;
}