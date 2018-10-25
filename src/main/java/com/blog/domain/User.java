package com.blog.domain;

public class User {
    /*
     create table t_user (
        `id` BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
        `name` VARCHAR(100) NOT NULL,
        `password` VARCHAR(100) NOT NULL,
        `isroot` BOOLEAN
        );
    * */
    private Integer id ;
    private String name ;
    private String password ;
    private Boolean isRoot ;

    @Override
    public String toString() {
        return id + ", "+name + ", " + password +", " + isRoot ;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRoot(Boolean root) {
        isRoot = root;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public Boolean getRoot() {
        return isRoot;
    }
}
