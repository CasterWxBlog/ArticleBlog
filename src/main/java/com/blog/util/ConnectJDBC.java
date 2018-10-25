package com.blog.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectJDBC {
    public static Connection connection = null ;
    // 建立连接
    public static Connection setConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("连接成功");
        }catch (Exception e){
            System.out.println(e);
            System.out.println("连接失败");
        }
        try{
            connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/CasterWx","root","root");
            return connection ;
        }catch (Exception e){
        }
        return null ;
    }
    // 断开连接
    public static void shutdownConnection(){
        try {
            if(connection!=null){
                connection.close();
            }
        }catch (Exception e){
        }
    }
}
