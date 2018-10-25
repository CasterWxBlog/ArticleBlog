<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
    <script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        $(function () {
            var treeData = [{
                text:"日志",
                attributes:{
                    url:"/log"
                }
            },{
                text:"文章列表",
                attributes:{
                    url:"/articlelist"
                }
            },{
                text:"后宫",
                attributes:{
                    url:"/gays"
                }
            },{
                text:"留言板",
                attributes:{
                    url:"/message"
                }
            },{
                text:"用户",
                attributes:{
                    url:"/user"
                }
            }
            ];
            // 实例化树菜单
            $("#tree").tree({
                data:treeData ,
                lines:true ,
                onClick:function (node) {
                    if (node.attributes){
                        openTab(node.text,node.attributes.url)
                    }
                }
            });
        })
        // tab
        function openTab(text,url) {
            var content = "<iframe frameborder='0' scrolling='auto' style='width: 100% ; height: 100%;' src='"+url+"'></iframe>"
            if ($("#tabs").tabs('exists',text)){
                $("#tabs").tabs('select',text)
            }else{
                $("#tabs").tabs('add',{
                    title:text ,
                    closable:true,
                    content:content
                });
            }
        }
    </script>
</head>
<body class="easyui-layout">
    <%--上条--%>
    <div region="north" style="height: 80px; background-color: #222222">
    </div>
    <%--中条--%>
    <div region="center">
        <div class="easyui-tabs" id="tabs" fit="true" boder="false">
            <%--<div title="首页">--%>
                <%--<div align="center" style="padding-top:100px;"><font color="red" size="10"></font></div>--%>
            <%--</div>--%>
        </div>
    </div>
    <%--西条--%>
    <div region="west" style="width: 150px;" title="导航菜单" split="true">
        <ui id="tree">
        </ui>

    </div>
    <%--南条--%>
    <div region="south" style="height: 30px;" align="center">版权所有<a href="https://github.com/CasterWx">Antzuhl@gmail.com</a></div>
</body>
</body>
</html>
