<%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/10/24
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap3/css/bootstrap-theme.min.css">
    <script src="bootstrap3/js/jquery-1.11.2.min.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <script src="bootstrap3/js/npm.js"></script>
</head>
<body style="background: url(image/bj.png) center 0 no-repeat; background-size: cover;background-attachment: fixed;">
<nav class="navbar navbar-inverse"  role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">首页</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="#">归档</a></li>
                <li><a href="#">后宫</a></li>
                <li><a href="#">Github</a></li>
                <li><a href="#">cnblog</a></li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a><span class="glyphicon glyphicon-user"></span>未登录</a></li>
            <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
        </ul>
    </div>
</nav>

</body>
</html>
