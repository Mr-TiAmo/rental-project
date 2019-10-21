package com.aaa.page;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors

public class PageInfos<T> implements Serializable {
    /**
     * 当前页码数
     */
    private Integer pageNum;

    /**
     * 每一页显示的条数
     */
    private Integer pageSize;

    /**
     * 所需要封装数据
     */
    private T data;

}
