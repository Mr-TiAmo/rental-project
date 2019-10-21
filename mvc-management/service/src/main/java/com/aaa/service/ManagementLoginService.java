package com.aaa.service;

import base.ResultData;
import com.aaa.base.BaseService;
import com.aaa.mapper.ManagementMapper;
import com.aaa.model.Management;
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
public class ManagementLoginService extends BaseService<Management> {

    @Autowired
    private ManagementMapper managementMapper;

    @Override
    public Mapper<Management> getMapper() {
        return managementMapper;
    }

    /**
    * @Description: 根据username查询management
    * @Param:
    * @return:
    * @Author: 栗翱
    * @Date: 2019/10/19
    */
    public ResultData<Management> selectUserByUsername(String username){
        ResultData resultData = new ResultData();
        Management management = new Management();
        management.setUsername(username);

        try {
            Management m = super.selectOne(management);
            if(null != m && StringUtil.isNotEmpty(m.getUsername())){
                // 说明从数据库中已经查询数据了
                resultData.setCode(LoginStatus.USER_EXIST.getCode());
                resultData.setMsg(LoginStatus.USER_EXIST.getMsg());
                resultData.setData(m);

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
