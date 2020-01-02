<%--
  Created by IntelliJ IDEA.
  User: 呵呵丶丶呵呵
  Date: 2019/12/13
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <link href="${pageContext.request.contextPath}/css/zane-calendar.css"/>
    <script type="text/javascript">
        $(function () {

            $("#msg").attr("disabled", true);
            $("#msgBtn").attr("disabled", true);
            $("#phone").blur(function () {
                var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
                if(myreg.test($(this).val())){
                    $.ajax({
                        url:"${pageContext.request.contextPath}/user/rePhone",
                        type: "POST",
                        data: {"phone":$("#phone").val()},
                        dataType: "json",
                        success: function(respData){
                            if(respData == true){
                                $("#magP").css("color","red");
                                $("#magP").text("此账号已经注册过");

                            }else {
                                $("#magP").css("color","green");
                                $("#magP").text("账号可用");
                                $("#msg").removeAttr("disabled");
                                $("#msgBtn").removeAttr("disabled");
                            }
                        }
                    });
                }else{
                    $("#magP").css("color","red");
                    $("#magP").text("请输入正确手机号");
                }

            })
            
            $("#msg").blur(function () {
                if ($(this).val().trim() == ""){
                    alert("请填写验证码")
                    return;
                }
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/tellMsgCode",
                    type: "POST",
                    data: {"msg":$("#msg").val()},
                    dataType: "json",
                    success: function(respData){
                        if(respData == true){
                            alert("验证成功");

                        }else {
                           alert("验证码有误");
                            $("#msg").val("");
                        }
                    }
                })
            })


            $("#pwd").blur(function () {
                var pwd = $(this).val();
                if (pwd.length < 6){
                    $("#magPwd").css("color","red");
                    $("#magPwd").text("密码为至少6位字符或数字");
                }else{
                    $("#magPwd").css("color","green");
                    $("#magPwd").text("完成");
                }
            })

            $("#rePwd").blur(function () {
                var rePwd = $(this).val();
                var pwd = $("#pwd").val();
                if (rePwd == pwd){
                    $("#magRePwd").css("color","green");
                    $("#magRePwd").text("完成");
                    $("#register").remove("disabled");
                }else{
                    $("#magRePwd").css("color","red");
                    $("#magRePwd").text("两次密码输入不一致");
                }
            })


            $("#register").click(function () {
                if ($("#phone").val().trim() == ""||$("#pwd").val().trim() == ""||$("#rePwd").val().trim() == ""||$("#msg").val().trim() == ""){
                    alert("请填写完信息")
                    return;
                }
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/register",
                    type: "POST",
                    data: $("#form").serialize(),
                    dataType: "json",
                    success: function(respData){
                        if(respData == true){
                            window.location.href="${pageContext.request.contextPath}/loginUI";
                        }else {
                            alert("出现错误")
                        }
                    }
                });
            })


            $("#msgBtn").click(function() {

                var phone=$("#phone").val();
                console.log(phone);
                time=5;
                var btn = $("#msgBtn");
                btn.attr("disabled", true);  //按钮禁止点击
                btn.val(time <= 0 ? "获取验证码" : ("" + (time) + "秒后可发送"));
                var hander = setInterval(function() {
                    if (time <= 0) {
                        clearInterval(hander); //清除倒计时
                        btn.val("发送动态密码");
                        btn.attr("disabled", false);
                        return false;
                    }else {
                        btn.val("" + (time--) + "秒后可发送");
                    }
                }, 1000);

                $.ajax({
                    url:"${pageContext.request.contextPath}/msgUP",
                    type:"post",
                    data:{"phone":$("#phone").val()},
                    dataType:"json",
                    success:function (data) {
                        alert(data);
                    }

                })
            })
        })
    </script>
</head>
<body>


    <form id="form">
        <table>
            <tr>
                <td>手机号：</td>
                <td><input type="text" name="phone" id="phone" /></td>
                <td id="magP"></td>
            </tr>
            <tr>
                <td>短信验证码：</td>
                <td><input type="text" name="msg" id="msg" maxlength="6"></td>
                <td><input type="button" value="获取验证码" id="msgBtn" /></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd" id="pwd" /></td>
                <td id="magPwd"></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="rePwd" id="rePwd" /></td>
                <td id="magRePwd"></td>
            </tr>

            <tr>
                <td><input type="button" id="register" value="注册" /></td>
                <td><input type="button" id="cancel" value="取消" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
