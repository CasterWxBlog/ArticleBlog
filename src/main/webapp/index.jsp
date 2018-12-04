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
    <title>吼呦~</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap3/css/bootstrap-theme.min.css">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="markdown/dist/showdown.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <script src="bootstrap3/js/npm.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/docute@3.4.12/plugins/docsearch.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/docute-evanyou/dist/evanyou.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/docute@3.4.12/dist/docute.js"></script>
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
<div class="container">
    <div class="jumbotron" style="opacity:0.8;" >
        <div id="result1"></div>
    </div>
    <div class="jumbotron" style="opacity:0.8;">
        <div id="result2"></div>
    </div>
    <div class="jumbotron" style="opacity:0.8;">
        <div id="result3"></div>
    </div>
    <div class="jumbotron" style="opacity:0.8;">
        <div id="result4"></div>
    </div>
</div>
<%--分页--%>
<div align="center">
    <ul class="pagination pagination-lg">
        <li><a href="#">&laquo;</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&raquo;</a></li>
    </ul>
</div>
<link rel="stylesheet" href="aplayer/APlayer.min.css">
<div id="aplayer" style="align:center;width:500px;position:fixed; bottom:0; z-index:999;  overflow:visible;">
</div>
<script src="aplayer/APlayer.min.js"></script>
<%--<iframe src="//player.bilibili.com/player.html?aid=34679476&cid=60755437&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>--%>
</body>
<script src="aplayer/aplayerBegin.js"></script>
<script type="text/javascript">
    $(function () {
        var converter = new showdown.Converter(),
            text = "## MFC-FingerPrint\n" +
                "基于MFC开发的指纹识别系统.\n",
            html = converter.makeHtml(text);
        document.getElementById("result1").innerHTML = html;
    });
</script>
</html>
