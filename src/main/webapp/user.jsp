<%@ page import="com.blog.dao.impl.UserDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.blog.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/10/25
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户</title>
</head>

<body>
<div>
<%
    UserDAO userDAO = new UserDAO();
    ArrayList<User> list = userDAO.list() ;
    for(int i=0;i<list.size();i++){
        out.print(list.get(i));
    }
%>
</div>
</body>
</html>
