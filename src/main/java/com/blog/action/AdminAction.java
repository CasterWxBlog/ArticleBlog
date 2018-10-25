package com.blog.action;

import com.blog.dao.impl.UserDAO;
import com.blog.domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName=req.getParameter("name");
        String password=req.getParameter("password");

        UserDAO userDAO = new UserDAO();
        User user = userDAO.get(new Integer(userName)) ;
        if (user!=null){
            // 获取Session
            HttpSession session=req.getSession();
            session.setAttribute("id", user.getId());
            session.setAttribute("name", user.getName());
            session.setAttribute("password", password);
            if (user.getPassword().equals(password)){
                if (user.getRoot()){
                    req.getRequestDispatcher("admin.jsp").forward(req, resp);
                }else if(!user.getRoot()){
                    req.getRequestDispatcher("index.jsp").forward(req, resp);
                }
            }
        } else {
            resp.sendRedirect("login.jsp");
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
