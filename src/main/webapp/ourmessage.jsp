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
    <link rel="stylesheet" href="dplayer/DPlayer.min.css">
    <div id="dplayer" style=" width:1100px; height:600px;"></div>
    <script src="dplayer/DPlayer.min.js"></script>
    <div class="jumbotron" style="opacity:0.8;" >
        <div id="result">
            <h2 align="center">留言板</h2><br><br>
            <h4>有什么话要对我说吗？这里是你畅所欲言的地方，可以咨询，可以交流，可以感叹，可以发飙，但不可以订外卖。</h4>
            <div align="center"><img  src="https://diygod.me/images/message0.jpg"></div>
        </div>
    </div>
</div>
<%--<iframe src="//player.bilibili.com/player.html?aid=34679476&cid=60755437&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>--%>
</body>

<script type="text/javascript">
    const dp = new DPlayer({
        container: document.getElementById('dplayer'),
        screenshot: true,
        video: {
            url: 'https://moeplayer.b0.upaiyun.com/dplayer/hikarunara.mp4',
            pic: 'demo.jpg',
            thumbnails: 'thumbnails.jpg'
        },
        subtitle: {
            url: 'webvtt.vtt'
        },
        danmaku: {
            id: 'demo',
            api: 'https://api.prprpr.me/dplayer/v3/bilibili?aid=4124125'
        }
    });
</script>
</html>
