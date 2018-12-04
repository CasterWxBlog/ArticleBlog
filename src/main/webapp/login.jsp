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
    <title>登录进入未知之地</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap3/css/bootstrap-theme.min.css">
    <script src="bootstrap3/js/jquery-1.11.2.min.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <script src="bootstrap3/js/npm.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/docute@3.4.12/plugins/docsearch.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/docute-evanyou/dist/evanyou.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/docute@3.4.12/dist/docute.js"></script>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'UA-48084758-9');
    </script>
    <link class="dplayer-css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/dplayer/dist/DPlayer.min.css">
    <style>
        body {
            text-rendering: auto;
        }
        #evanyou-canvas {
            z-index: -1 !important;
        }
        .dplayer-wrap {
            max-width: 700px;
            margin: 20px 0;
        }
    </style>
</head>
<%
    String username = (String) session.getAttribute("name") ;
    Integer id = (Integer) session.getAttribute("id") ;

    if(username==null){
        username = "未登录" ;
    }
%>
<body>
<script src="css/config.js"></script>
<nav class="navbar navbar-inverse"  role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">首页</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li><a href="#">归档</a></li>
                    <li><a href="#">后宫</a></li>
                    <li><a href="https://github.com/CasterWx">Github</a></li>
                    <li><a href="http://www.cnblogs.com/LexMoon/">cnblog</a></li>
                    <li><a href="/ourmessage">留言板</a></li>
                </ul>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a><span class="glyphicon glyphicon-user"></span><%=username%></a></li>
                <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
        </div>
    </nav>
<div class="container" style="position: absolute;top: 70%;left: 40%;height: 30%;width: 30%;margin: -15% 0 0 -25%;">
    <div class="jumbotron">
        <form action="/admin" method="post" role="form">
            <div class="form-group">
                <label for="name">用户名:</label>
                <input type="text" class="form-control" name="name" placeholder="请输入用户名" required>
            </div>
            <div class="form-group">
                <label for="password">密码:</label>
                <input type="password" class="form-control" name="password" placeholder="请输入密码" required>
            </div>
            <div align="center">
                <button type="submit" class="btn btn-success">登录</button>
                <button type="button" onclick="window.location.href='/signup.jsp'" class="btn btn-danger">注册</button>
            </div>
         </form>
    </div>
</div>
<link rel="stylesheet" href="aplayer/APlayer.min.css">
<div id="aplayer" style="align:center;width:500px;position:fixed; bottom:0; z-index:999;  overflow:visible;">
</div>
<script src="aplayer/APlayer.min.js"></script>
</body>
<script src="aplayer/aplayerBegin.js"></script>
</html>
