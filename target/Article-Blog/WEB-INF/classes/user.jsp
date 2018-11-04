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
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap3/css/bootstrap-theme.min.css">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="markdown/dist/showdown.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <script src="bootstrap3/js/npm.js"></script>
    <title>用户</title>
</head>
<%
    UserDAO userDAO = new UserDAO();
    ArrayList<User> list = userDAO.list() ;
%>
<body>
<div class="container">
    <div class="jumbotron" style="opacity:0.8;" >
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>用户名</th>
                <th>密码</th>
                <th>权限</th>
            </tr>
            </thead>
        <%
            for(int i=0;i<list.size();i++){
        %>
            <tbody>
            <tr>
                <td><%=list.get(i).getId()%></td>
                <td><%=list.get(i).getName()%></td>
                <td><%=list.get(i).getPassword()%></td>
                <td><%=list.get(i).getRoot()%></td>
                <td><button type="button"  onclick="callMe(<%=list.get(i).getId()%>);" class="btn btn-danger">删除</button></td>
            </tr>
            </tbody>
        <%
            }
        %>
    </table>
    </div>
</div>
<script>
    var VaChina=function(){
        var _this=this;
        _this.ajax=function(){
            var xmlHttp=false;
            try{xmlHttp = new XMLHttpRequest();}
            catch(trymicrosoft){
                try{xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                }catch(othermicrosoft){
                    try{xmlHttp = new ActiveXObject("Microsoft.XMLHTTP")}
                    catch(failed){}
                }
            }
            return xmlHttp;
        };
        _this.ajaxGet=function(url,functionCallback,isSynchronous){
            var xmlHttp = _this.ajax();
            if(isSynchronous==undefined || isSynchronous==true) isSynchronous=true;
            else isSynchronous=false;
            xmlHttp.open("get",url,isSynchronous);
            xmlHttp.onreadystatechange = function(){
                if(xmlHttp.readyState == 4&&xmlHttp.status == 200){
                    functionCallback(xmlHttp);
                }
            };
            xmlHttp.send(null);
        };
    };
    var callMe=function(data){//onclick触发此方法
        var va = new VaChina();
        va.ajaxGet("delete.jsp?menu="+data
            ,function(xmlHttp){
                alert("Nice 此人已被除名！");
                window.location.reload();
            });
    };
</script>
</body>
</html>
