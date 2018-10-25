<%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/10/25
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后宫</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap3/css/bootstrap-theme.min.css">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="markdown/dist/showdown.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <script src="bootstrap3/js/npm.js"></script>
    <style>
        /* Custom Styles */
        ul.nav-tabs{
            width: 140px;
            margin-top: 20px;
            border-radius: 4px;
            border: 1px solid #ddd;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
        }
        ul.nav-tabs li{
            margin: 0;
            border-top: 1px solid #ddd;
        }
        ul.nav-tabs li:first-child{
            border-top: none;
        }
        ul.nav-tabs li a{
            margin: 0;
            padding: 8px 16px;
            border-radius: 0;
        }
        ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
            color: #fff;
            background: #0088cc;
            border: 1px solid #0088cc;
        }
        ul.nav-tabs li:first-child a{
            border-radius: 4px 4px 0 0;
        }
        ul.nav-tabs li:last-child a{
            border-radius: 0 0 4px 4px;
        }
        ul.nav-tabs.affix{
            top: 30px; /* Set the top position of pinned element */
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-xs-3" id="myScrollspy">
                <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                    <li class="active"><a href="#section-1">王某</a></li>
                    <li><a href="#section-2">韩嬷嬷</a></li>
                    <li><a href="#section-3">AntzUhl</a></li>
                    <li><a href="#section-4">奶berber</a></li>
                </ul>
            </div>
            <div class="col-xs-9">
                <h3>关于友链申请</h3>
                <p>先友后链；不再接受很熟的朋友以外的友链申请<p>
                <h2 id="section-1">王某</h2>
                <p>家乡：四川省-南充市<br>
                    婚姻：热恋中<br>
                    职位：薇尔利特老公<br>
                    单位：某学校弱渣学生<br>
                    感兴趣的技术：无知之幕，纳什均衡，量子力学，拉普里斯妖，梦里编程<br>
                    最近目标：先定一个小目标，赚它喵一个亿<br>
                    座右铭：我永远喜欢薇尔利特<br>
                    QQ：1325200471<br>
                <hr>
                <h2 id="section-2">韩嬷嬷</h2>
                <p>王某的Github头号粉丝。<br>
                    负责项目中MarkDown -> Html 转换功能的实现。<br>
                    CasterWx Organizations 二号种子。<br>
                </p>
                <hr>
                <h2 id="section-3">AntzUhl</h2>
                <p>
                    王某的另一个身份。<br>
                    每天都会看一看自己的博客园有没有涨粉丝。
                    <a href="https://home.cnblogs.com/u/LexMoon/followers/">点击这里</a>
                    <br>
                    可乐的化身。
                </p>
                <hr>
                <h2 id="section-4">奶berber</h2>
                <p> <a href="https://yq.aliyun.com/users/1503020213628081?spm=a2c4e.11155435.allcontent.1.dc243065NVUlxx">阿里云栖社区专家</a> <br>
                    可能是AntzUhl的小号，因为他们俩博客内容完全一样。
                </p>
                <hr>
            </div>
        </div>
    </div>
</div>
</body>
</html>
