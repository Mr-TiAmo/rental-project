package com.aaa.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

/** 
* @Description:
 * 	 * @Component 注解把RedisProperties 作为spring的一个组件
 * 	 *    作用是把redis需要的配置和连接信息封装到RedisProperties类中
 * 	 *    该组件为可拆卸的（面向组件编程思想）
 * 	 * @ConfigurationProperties 注解 把application.properties文件中读取到RedisProperties类中
 * 	 *     当使用该注解必须使用spring-bootconfiguration-processor的jar包
 * 	 *     prefix ="spring.redis" 作用选中application.properties文件中属性名进行匹配
 * 	 *
 * 	 * RedisProperties类中的所有属性通过    @ConfigurationProperties 注解 依赖setter和getter方法从application.properties文件中获取
 * 	 * (在其他类调用这个类中的属性的时候，不能进行修改，只能读取数据)
 * 	 * !!!!所以比较尴尬(因为属性不能被其他的类修改所以不能有setter，但是最终通过setter方法赋值)
 * 	 *       最终没有setter方法是不行的！！！！！
 * 	 *  其他的类调用到RedisProperties类中的属性的时候，一定不能修改！！！！！！
* @Param:  
* @return:  
* @Author: 栗翱
* @Date: 2019/10/18 
*/ 
@Component
@PropertySource("classpath:config/redis.properties")
@ConfigurationProperties(prefix = "spring.redis")
public class RedisProperties {
    /**
     * redis 集群的ip 和 端口号
     */
    private String nodes;
    /**
     * redis 最大连接数
     */
    private String maxAttempts;
    /**
     * redis的最大连接超时时间（毫秒）
     */
    private String commandTimeout;
    /**
     * redis的失效时间
     */
    private String expire;

    public String getNodes() {
        return nodes;
    }

    public void setNodes(String nodes) {
        this.nodes = nodes;
    }

    public String getMaxAttempts() {
        return maxAttempts;
    }

    public void setMaxAttempts(String maxAttempts) {
        this.maxAttempts = maxAttempts;
    }

    public String getCommandTimeout() {
        return commandTimeout;
    }

    public void setCommandTimeout(String commandTimeout) {
        this.commandTimeout = commandTimeout;
    }

    public String getExpire() {
        return expire;
    }

    public void setExpire(String expire) {
        this.expire = expire;
    }

}
