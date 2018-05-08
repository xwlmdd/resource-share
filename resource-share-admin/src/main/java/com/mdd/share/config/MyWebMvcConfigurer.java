package com.mdd.share.config;

import com.mdd.share.interceptor.BasePathInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2018/4/29.
 */
@Configuration
public class MyWebMvcConfigurer extends WebMvcConfigurerAdapter{

    @Resource
    private BasePathInterceptor basePathInterceptor;

    public void addInterceptors(InterceptorRegistry registry) {
//        registry.addInterceptor(basePathInterceptor).addPathPatterns("/*");
    }

}
