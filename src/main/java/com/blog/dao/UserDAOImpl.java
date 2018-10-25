package com.blog.dao;

import com.blog.domain.User;

import java.util.ArrayList;

public interface UserDAOImpl {
    // ----------------------------------增--------------------------------------------

    /**
     * 保存用户对象
     * @param user
     * */
    void save(User user);

    // ----------------------------------删--------------------------------------------

    /**
     *  根据删除指定用户
     *  @param user 用户对象
     * */

    void delete(User user) ;
    /**
     *  根据主键删除指定用户
     *  @param id    用户对象主键
     * */
    void delete(Integer id) ;

    // ----------------------------------改--------------------------------------------
    /**
     *  更新指定用户信息
     *  @param id  用户对象主键
     *  @param user  用户对象
     * */
    void update(Integer id,User user) ;
    /**
     *  根据主键删除指定用户
     *  @param user 用户对象
     * */
    void update(User user);

    // ----------------------------------查--------------------------------------------

    /**
     *  查询指定id的用户对象
     *  @param id  用户对象主键
     *  @return User if id存在,返回User对象,否则返回null
     */
    User get(Integer id) ;

    /**
     *  查询所有用户对象
     *  @return 所有用户对象
     * */
    ArrayList<User> list() ;
}
