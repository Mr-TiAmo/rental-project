package com.aaa.model;

import com.aaa.base.BaseModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "dictionary_type")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class DictionaryType extends BaseModel implements Serializable {

    /**
     * 字典数据类型名称
     */
    private String name;
}