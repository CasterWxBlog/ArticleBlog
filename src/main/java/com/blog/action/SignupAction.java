package com.blog.action;

import com.blog.dao.impl.UserDAO;
import com.blog.domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class SignupAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName=req.getParameter("name");
        String password=req.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User user = new User();
        user.setRoot(false);
        user.setName(userName);
        user.setPassword(password);
        userDAO.save(user);

        ArrayList<User> list = userDAO.list() ;
        user  = list.get(list.size()-1);
        HttpSession session=req.getSession();
        session.setAttribute("id", user.getId());
        session.setAttribute("name", user.getId()+" "+user.getName());
        session.setAttribute("password", password);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
