package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.UserMapper;
import com.aaa.model.Management;
import com.aaa.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import status.LoginStatus;
import tk.mybatis.mapper.common.Mapper;
import utils.StringUtil;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/19
*/
@Service
public class UserService extends BaseService<User> {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Mapper<User> getMapper() {
        return userMapper;
    }


    /**
    * @Description: 根据用户名密码查询user
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/21
    */
    public ResultData<User> selectUserByUsernameAndPassword(User user){
        ResultData resultData = new ResultData();

        try {
            User u = super.selectOne(user);
            if(null != u && StringUtil.isNotEmpty(u.getUsername())){
                // 说明从数据库中已经查询数据了

                resultData.setCode(LoginStatus.LOGIN_SUCCESS.getCode());
                resultData.setMsg(LoginStatus.LOGIN_SUCCESS.getMsg());
                resultData.setData(u);

            }else {
                resultData.setCode(LoginStatus.USER_NOT_EXIST.getCode());
                resultData.setMsg(LoginStatus.USER_NOT_EXIST.getMsg());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return resultData;
    }
}
