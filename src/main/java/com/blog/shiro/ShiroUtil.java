package com.blog.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

public class ShiroUtil {
    public static Subject login(String configFile,String username,String password){
        // 读取配置文件，初始化FactoryManager工厂
        Factory<SecurityManager> factory = new IniSecurityManagerFactory(configFile);
        // 获取securityManager实例
        SecurityManager securityManager = factory.getInstance()  ;
        // 把securityManager实例绑定到SecurityUtils
        SecurityUtils.setSecurityManager(securityManager);
        // 得到当前用户
        Subject subject = SecurityUtils.getSubject() ;
        // 创建token令牌，用户名/密码
        UsernamePasswordToken token = new UsernamePasswordToken(username,password);
        try{
            subject.login(token);
            System.out.println("login ok");
        }catch (Exception e){
            System.out.println(e);
            System.out.println("login error");
        }
        return subject ;
    }
}
