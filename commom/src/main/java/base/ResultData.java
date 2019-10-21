package base;

import lombok.experimental.Accessors;

import java.io.Serializable;
/**
* @Description: 定义统一返回类型
* @Param:      返回状态码
 *              返回信息（"保存错误"）
 *              返回详细信息
 *              返回数据
* @return:
* @Author: 栗翱
* @Date: 2019/10/18
*/
public class ResultData<T> implements Serializable {

    private String code;
    private String msg;
    private String detail;
    private T data;

    public String getCode() {
        return code;
    }

    public ResultData<T> setCode(String code) {
        this.code = code;
        return this;
    }

    public String getMsg() {
        return msg;
    }

    public ResultData<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public String getDetail() {
        return detail;
    }

    public ResultData<T> setDetail(String detail) {
        this.detail = detail;
        return this;
    }

    public T getData() {
        return data;
    }

    public ResultData<T> setData(T data) {
        this.data = data;
        return this;
    }
}
