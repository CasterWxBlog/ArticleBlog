package com.blog.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-11-29-23:07
 */
public class IndexAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mark =  "# MFC-FingerPrint\n" +
                "基于MFC开发的指纹识别系统.\n" ;
        HttpSession session=req.getSession();
        session.setAttribute("result1",mark);
        System.out.println("do");
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}