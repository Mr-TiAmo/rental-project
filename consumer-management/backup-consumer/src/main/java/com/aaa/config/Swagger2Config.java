package com.aaa.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Company AAA软件教育
 * @Author Seven Lee
 * @Date Create in 2019/10/19 13:53
 * @Description
 *      swagger2前后端分离框架配置
 **/
@Configuration
@EnableSwagger2
public class Swagger2Config {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.aaa.lee.project.controller"))
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("租房网 接口文档")
                .description("RentFramkework 接口文档项目描述")
                .contact(new Contact("Seven Lee" ,"http://www.seven.com", "sevenLee@Gmail.com"))
                .version("1.0")
                .build();
    }

}
