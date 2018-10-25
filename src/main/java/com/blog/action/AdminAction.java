package com.blog.action;

import com.blog.dao.impl.UserDAO;
import com.blog.domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdminAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName=req.getParameter("name");
        String password=req.getParameter("password");

        req.setAttribute("name", userName);
        req.setAttribute("password", password);
        if(userName==null||password==null){
            System.out.println("null");
            req.setAttribute("error", "用户名或密码为空！");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
            return;
        }
        UserDAO userDAO = new UserDAO();
        User user = userDAO.get(new Integer(userName)) ;
        if (user.getPassword().equals(password)){
            if (user.getRoot()){
                resp.sendRedirect("admin.jsp");
            }else if(user.getRoot()){
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }else {
            System.out.println("error");
            req.setAttribute("error", "用户名或密码错误！");
            // 服务器跳转
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
