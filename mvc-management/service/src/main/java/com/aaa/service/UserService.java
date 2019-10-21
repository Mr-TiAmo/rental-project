package com.aaa.service;

import com.aaa.base.BaseService;
import com.aaa.mapper.UserMapper;
import com.aaa.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.common.Mapper;

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

}
