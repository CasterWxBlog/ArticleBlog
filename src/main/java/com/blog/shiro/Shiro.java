package com.blog.shiro;

import org.apache.shiro.subject.Subject;
import org.junit.jupiter.api.Test;

public class Shiro {
    @Test
    // 权限
    public void demo3(){
        Subject subject = ShiroUtil.login("classpath:shiro/shiro.ini","wang","123456") ;
        //用户验证
        System.out.println(subject.hasRole("role1"));
        System.out.println(subject.isPermitted("user:select"));
        System.out.println(subject.isPermitted("user:add"));
    }

    @Test
    // 赋予
    public void demo(){
        Subject subject ;
    }
}
