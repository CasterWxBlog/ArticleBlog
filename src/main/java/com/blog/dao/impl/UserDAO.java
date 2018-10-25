package com.blog.dao.impl;

import com.blog.dao.UserDAOImpl;
import com.blog.domain.User;
import com.blog.util.ConnectJDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDAO implements UserDAOImpl {
    public static ConnectJDBC con = new ConnectJDBC();
    @Override
    public void save(User user) {
        Statement statement = null ;
        try {
            statement = con.setConnection().createStatement();
            // sql语句:查询对应id
            String sql = "INSERT INTO t_user(id,name,password,isroot) VALUES(" + user.getId()+",'"+user.getName()+"','"+user.getPassword()+"',"+user.getRoot()+")";
            statement.executeUpdate(sql);
        }catch (Exception e){
        }finally {
            try{
                if (statement!=null){
                    statement.close();
                }
            }catch (Exception e){
            }
        }
        con.shutdownConnection();
    }

    @Override
    public void delete(User user) {
        Integer id = user.getId() ;
        delete(id);
    }

    @Override
    public void delete(Integer id) {
        Statement statement = null ;
        try {
            statement = con.setConnection().createStatement();
            // sql语句:查询对应id
            String sql = "DELETE FROM t_user WHERE id="+id;
            statement.executeUpdate(sql);
        }catch (Exception e){
        }finally {
            try{
                if (statement!=null){
                    statement.close();
                }
            }catch (Exception e){
            }
        }
        con.shutdownConnection();
    }

    @Override
    public void update(Integer id, User user) {
        Statement statement = null ;
        try {
            statement = con.setConnection().createStatement();
            // sql语句:查询对应id
            String sql = "UPDATE t_user SET name='"+ user.getName() +"',password='"+user.getPassword() +"',isroot="+user.getRoot()+" WHERE id="+id;
            statement.executeUpdate(sql);
        }catch (Exception e){
        }finally {
            try{
                if (statement!=null){
                    statement.close();
                }
            }catch (Exception e){
            }
        }
        con.shutdownConnection();
    }

    @Override
    public void update(User user) {
        Integer id = user.getId() ;
        update(id,user);
    }

    @Override
    public User get(Integer id) {
        Statement statement = null ;
        ResultSet resultSet = null ;
        User user = null ;
        try {
            statement = con.setConnection().createStatement();
            // sql语句:查询对应id
            String sql = "SELECT * FROM t_user where id="+id  ;
            resultSet = statement.executeQuery(sql);
            if(resultSet.next()){
                user = new User() ;
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setPassword(resultSet.getString("password"));
                user.setRoot(resultSet.getBoolean("isroot"));
                return user ;
            }
        }catch (Exception e){
        }finally {
            try{
                if (statement!=null){
                    statement.close();
                }
            }catch (Exception e){
            }finally {
                try{
                    if(resultSet!=null){
                        resultSet.close();
                    }
                }catch (Exception e){
                }
            }
        }
        con.shutdownConnection();

        return null;
    }

    @Override
    public ArrayList<User> list() {
        ArrayList<User> list  = new ArrayList<User>() ;

        Statement statement = null ;
        ResultSet resultSet = null ;
        User user = null ;
        try {
            statement = con.setConnection().createStatement();
            // sql语句:查询对应id
            String sql = "SELECT * FROM t_user" ;
            resultSet = statement.executeQuery(sql);

            while(resultSet.next()){
                user = new User() ;
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setPassword(resultSet.getString("password"));
                user.setRoot(resultSet.getBoolean("isroot"));
                list.add(user) ;
            }
            return list ;
        }catch (Exception e){
        }finally {
            try{
                if (statement!=null){
                    statement.close();
                }
            }catch (Exception e){
            }finally {
                try{
                    if(resultSet!=null){
                        resultSet.close();
                    }
                }catch (Exception e){
                }
            }
        }
        con.shutdownConnection();
        return list;
    }
}
