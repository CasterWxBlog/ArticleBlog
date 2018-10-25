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
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="markdown/dist/showdown.js"></script>
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
                <li><a href="https://github.com/CasterWx">Github</a></li>
                <li><a href="http://www.cnblogs.com/LexMoon/">cnblog</a></li>
                <li><a href="/ourmessage">留言板</a></li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a><span class="glyphicon glyphicon-user"></span>未登录</a></li>
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
</body>
<script type="text/javascript">
    $(function () {

        var converter = new showdown.Converter(),
            text = "### [直男眼里 的 没有对象也要谈恋爱之女朋友的情绪监控 之 分词](/blog1)\n" +
                "\n" +
                "> Blog : [Antzuhl](http://www.cnblogs.com/LexMoon/)\n" +
                "\n" +
                "> Github : [CasterWx](https://github.com/CasterWx)\n" +
                "\n" +
                "\n" +
                ":kissing_closed_eyes::kissing_closed_eyes:  通过女朋友的一句话分析她的心情 。\n" +
                "\n" +
                "Analyze her mood through her girlfriend's words .\n",
            html = converter.makeHtml(text);
        document.getElementById("result1").innerHTML = html;
        converter = new showdown.Converter(),
            text = "### 自制操作系统Antz\n" +
                "> 我已经规范了系统代码风格，类似于按照linux分包，把各部分功能区分开了\n" +
                "##### [Antz系统更新地址](https://www.cnblogs.com/LexMoon/category/1262287.html)\n" +
                "\n" +
                "##### [Linux内核源码分析地址](https://www.cnblogs.com/LexMoon/category/1267413.html)\n" +
                "\n" +
                "##### [Github项目地址](https://github.com/CasterWx/AntzOS)",
            html = converter.makeHtml(text);
        document.getElementById("result2").innerHTML = html;
        converter = new showdown.Converter(),
            text = "### Java-Crawler\n" +
                "各类爬虫代码\n" +
                "\n" +
                "##### [模拟登录类](https://github.com/CasterWx/java-Crawler/tree/master/src/%E7%88%AC%E8%99%AB/%E6%A8%A1%E6%8B%9F%E7%99%BB%E5%BD%95) \n" +
                "##### [数据爬取类](https://github.com/CasterWx/java-Crawler/tree/master/src/%E7%88%AC%E8%99%AB/%E6%95%B0%E6%8D%AE%E8%A7%A3%E6%9E%90)\n" +
                "#####  关于爬虫代码讲解可以参考[我的博客](http://www.cnblogs.com/LexMoon/),代码编写时间均在2017年下半年，爬虫相应网站可能会有所更新，所以爬虫会出现些问题，如果发现了问题可以联系我，我会抽空重新写一下，当然也欢迎有人帮我改改代码Bug。\n",
            html = converter.makeHtml(text);
        document.getElementById("result3").innerHTML = html;
        converter = new showdown.Converter(),
            text = "### c-cPlusPlus-Virus\n" +
                "\n" +
                "##### 自制病毒——控制桌面背景鼠标以及开关机\n" +
                "##### 参考:\n" +
                "##### [Github](https://github.com/CasterWx/c-cPlusPlus-Virus)",
            html = converter.makeHtml(text);
        document.getElementById("result4").innerHTML = html;
    });
</script>
</html>
