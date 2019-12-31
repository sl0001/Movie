<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/22
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录页面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#btn").click(function () {
                var phone = $("#phone").val();
                var pwd = $("#pwd").val();
                if (phone == ""){
                    alert("请输入手机号")
                    return;
                }
                if (pwd == ""){
                    alert("请输入密码")
                    return;
                }
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/login",
                    type: "POST",
                    data: $("#form").serialize(),
                    dataType: "json",
                    success: function(respData){
                        if(respData == 2){
                            window.location.href="${pageContext.request.contextPath}/main";
                        }else if(respData == 1) {
                            alert("此用户未注册")
                        }else if (respData == 3){
                            alert("密码错误")
                        }
                    }
                })
            })
        })
    </script>
</head>
<body  >
<div style="border-bottom: #FD482C 50px solid">
   <a href="${pageContext.request.contextPath}/filmMain">
       <img src="${pageContext.request.contextPath}/image/longyanlogo.png "style="margin-left: 200px"/>
   </a>
</div>
<ul style="margin-top: 150px; list-style:none">
    <li >

            <img src="${pageContext.request.contextPath}/image/deng.png"  style="margin-right: 150px"/>

            <form class="login" id="form" style="display: inline-block;">
                账号登录
                <br>
                <br>
                <input type="text" name="phone" id="phone"  placeholder="+86>手机号登录" required="required" style="width: 300px;height:40px"/>
                <br>
                <br>
                <br>
                <input type="password" name="pwd" id="pwd" placeholder="密码" required="required" style="width: 300px;height:40px "/>
                <div style="width: 300px;text-align: right;color: #FF5722"><a>忘记密码 ?</a></div>
                <br>
                <input type="button" id="btn" value="登录" style="width: 300px;height:40px;text-align: center;background:#FD482C"/>
                 <br>
                 <br>
                <div> <span style="color:#D9D9D9;">还没有账号</span>&nbsp;<a href="${pageContext.request.contextPath}/registerUI" style="color: #FF5722">免费注册</a></div>
            </form>
    </li>
</ul>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

</body>
</html>
