package com.blog.test;

import com.blog.dao.impl.UserDAO;
import com.blog.domain.User;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;

public class UserTest {
    UserDAO userDAO = new UserDAO();
    @Test
    public void testSave() {
        User user = new User() ;
        user.setId(1610120023);
        user.setName("jgy");
        user.setPassword("jgy");
        user.setRoot(true);
        userDAO.save(user);
    }
    @Test
    public void testList(){
        ArrayList<User> list = userDAO.list() ;
        for(int i=0;i<list.size();i++){
            System.out.print(list.get(i));
        }
    }
    @Test
    public void testDelete(){
        userDAO.delete(1610120020);
    }
}
