package com.aaa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/20
*/
@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients(basePackages = {"com.aaa"})
public class ApplicationRun6081 {
    public static void main(String[] args) {
        SpringApplication.run(ApplicationRun6081.class, args);
    }
}
