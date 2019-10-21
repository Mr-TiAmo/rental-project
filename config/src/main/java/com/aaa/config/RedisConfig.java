package com.aaa.config;

import com.aaa.properties.RedisProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

import java.util.HashSet;
import java.util.Set;

/**
* @Description:
* @Param:
* @return:
* @Author: 栗翱
* @Date: 2019/10/18
*/
@SpringBootApplication
public class RedisConfig {
    @Autowired
    private RedisProperties redisProperties;

    @Bean
    public JedisCluster getJedisCluster(){

        String nodes = redisProperties.getNodes();
        String[] splits = nodes.split(",");

        Set<HostAndPort> hostAndPortSet = new HashSet<HostAndPort>();

        for(String str : splits){
            String[] split = str.split(":");
            HostAndPort hostAndPort = new HostAndPort(split[0],Integer.parseInt(split[1]));
            hostAndPortSet.add(hostAndPort);

        }
        return new JedisCluster(hostAndPortSet, Integer.parseInt(redisProperties.getCommandTimeout()), Integer.parseInt(redisProperties.getMaxAttempts()));

    }
}
