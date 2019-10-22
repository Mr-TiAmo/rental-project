package com.aaa.fallback;

import base.ResultData;
import com.aaa.model.Management;
import com.aaa.model.User;
import com.aaa.service.IProjectService;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.List;

//@Component
public class ProjectServiceFallBack {
//    @Override
//    public IProjectService create(Throwable throwable) {
//        return new IProjectService() {
//            @Override
//            public List<User> selectAllUsers() {
//                return null;
//            }
//
//            @Override
//            public ResultData<Management> selectUserByUsername(String username) {
//                return null;
//            }
//        };
//
//    }
}
