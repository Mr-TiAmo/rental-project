package base;

import org.springframework.stereotype.Controller;
import status.LoginStatus;

/**
* @Description: 当从controller返回给前端页面（要求所有的请求为ajax）
 *               所要返回的内容以及返回的状态码和返回的信息
 *               需要返回的对象必须要统一，方便前端处理，需要返回自己自定义的类
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/18
*/
@Controller
public class BaseController {
    /**
    * @Description:  登录成功，使用系统消息
    * @Param:
    * @return:
    * @Author: 昝昭...
    * @Date: 2019/10/18
    */
    protected ResultData success(){
        ResultData resultData = new ResultData();
        resultData.setCode(LoginStatus.LOGIN_SUCCESS.getCode());
        resultData.setMsg(LoginStatus.LOGIN_SUCCESS.getMsg());
        return resultData;
    }

    /**
    * @Description: 登录成功，自定义放回消息
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    protected ResultData success(String msg){
        ResultData resultData = new ResultData();
        resultData.setCode(LoginStatus.LOGIN_SUCCESS.getCode());
        resultData.setMsg(msg);
        return resultData;
    }

    /**
    * @Description:  登录成功，自定义返回值和返回信息
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    protected ResultData success(Object data) {
        ResultData resultData = new ResultData();
        resultData.setCode(LoginStatus.LOGIN_SUCCESS.getCode());
        resultData.setMsg(LoginStatus.LOGIN_SUCCESS.getMsg());
        resultData.setData(data);
        return resultData;
    }
    /**
    * @Description:  登录失败，使用系统消息
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    protected ResultData failed() {
        ResultData resultData = new ResultData();
        resultData.setCode(LoginStatus.LOGIN_FAILED.getCode());
        resultData.setMsg(LoginStatus.LOGIN_FAILED.getMsg());
        return resultData;
    }

    /**
    * @Description:  登录失败，使用自定义消息
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    protected ResultData failed(String msg) {
        ResultData resultData = new ResultData();
        resultData.setCode(LoginStatus.LOGIN_FAILED.getCode());
        resultData.setMsg(msg);
        return resultData;
    }

    /**
    * @Description:   登录失败，使用自定义消息和返回值
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/18
    */
    protected ResultData failed(String msg, Object data) {
        ResultData resultData = new ResultData();
        resultData.setCode(LoginStatus.LOGIN_FAILED.getCode());
        resultData.setMsg(msg);
        resultData.setData(data);
        return resultData;
    }
}
