+<%--
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
<style>
    *{
        padding: 0px;
        margin: 0px;
    }

    table th{
        font-size: 14px;
        font-weight: 200;
        color: black;
    }

    table td>input{
        /*border-color: red;*/
        width: 300px;
        height: 30px;
        line-height: 30px;
    }

    table td>input:hover{
        border-color: red;
    }

    table tr input{
        margin:5px 0px 5px 0px;
    }

    table td>span{
        font-size: 12px;
        color: white;
        display: inline-block;
        width: 56px;
        height: 20px;
        padding-left: 42px;
        /*margin: 0px 15px 0px 15px;*/
        background-color: gainsboro;
    }

    table input[type='submit']{
        width: 230px;
        height: 36px;
        line-height: 36px;
        font-size: 18px;
        color: white;
        background-color: red;
    }

    table tr td a{
        font-size: 14px;
        color: red;
        text-decoration: none;
    }

    .footer--mini p a,p{
        font-size: 12px;
        color: gray;
    }

    .footer--mini{
        padding: 30px 0px 0px 400px;
    }

    .content{
        /*padding-bottom: 20px;
        padding-top:20px ;*/
        padding: 20px 0px 20px 200px;
        border-bottom: gainsboro solid 1px;
        border-top: red solid 3px;
    }

    .header{
        padding-left: 100px;
    }

    .header img{
        /*width: 250px;*/
        height: 80px;
    }


</style>
<body>
<!--头部-->
<div class="header">
    <a href="">
        <img src="image/longyanlogo.png" />
    </a>
</div>
<!--中间部分-->
<div class="content">
    <div class="J-unitive-signup-form">
        <div class="sheet" style="display:block">
            <form action="/account/mobilesignupV2" id="form" method="POST">

                <table border="0">
                    <tr>
                        <th>
                            <label>手机号</label>
                        </th>
                        <td>
                            <input type="text" name="phone" id="phone" class="f-text J-mobile"/>
                        </td>
                    </tr>
                    <tr>
                        <div class="form-field form-field--vbtn">
                            <!--<label>图片验证码</label>

                            <div class="J-captcha captcha-wrapper" style="display:none" hidden="true">
                                <input type="text" id="captcha-mobile" class="f-text J-captcha" name="captcha-mobile" autocomplete="off" />
                                <img id="signup-captcha-mobile-img" height="34px" width="60px" class="signup-captcha-img J-captcha-refresh" src="https://passport.meituan.com/account/captcha" />
                                <a tabindex="-1" class="J-captcha-refresh captcha-refresh inline-link" href="javascript:void(0)">看不清楚？换一张</a>
                                <span class="J-captcha-tip inline-tip"></span>
                            </div>-->
                            <th></th>
                            <td>
                                <div class="verify-wrapper">
                                    <input type="button" class="btn-normal btn-mini verify-btn J-verify-btn" id="msgBtn" value="免费获取短信动态码" />
                                    <span class="f1 verify-tip" id="J-verify-tip"></span>
                                </div>
                            </td>
                        </div>
                    </tr>
                    <tr>
                        <div class="sms">
                            <th>
                                <label>短信动态码</label>
                            </th>
                            <td>
                                <input type="text" name="msg" id="msg" class="f-text J-sms"/>
                            </td>
                        </div>
                    </tr>
                    <tr>
                        <div class="pwd">

                            <th>
                                <label>创建密码</label>
                            </th>
                            <td>
                                <input type="password" name="pwd" id="pwd" class="f-text J-pwd"/>
                            </td>
                        </div>
                    </tr>
                    <!--<tr>
                        <th></th>
                        <td>
                            <span class="pw-strength__label">弱</span>
                            <span class="pw-strength__label">中</span>
                            <span class="pw-strength__label pw-strength__label--noborder">强</span>
                        </td>
                    </tr>-->
                    <tr>
                        <div class="pwd2">
                            <th>
                                <label>确认密码</label>
                            </th>
                            <td>
                                <input type="password" name="rePwd" id="rePwd" class="f-text J-pwd2"/>
                            </td>
                        </div>
                    </tr>
                    <!--<tr>
                        <th></th>
                        <td>
                            <div class="slider-verify-wrapper" style="display:none" >
                                <div class="slider-verify-pop-bg"></div>
                                <div id="slider-verify" ></div>
                            </div>
                        </td>
                    </tr>-->
                    <tr>
                        <th></th>
                        <td>
                            <div class="form-field">
                                <input data-mtevent="signup.submit" type="button" name="commit" id="register" class="btn" value="同意以下协议并注册" />
                                <!--<a href="" target="_blank"></a>-->
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <!--<input type="hidden" name="fingerprint" class="J-fingerprint" value="" />-->
                            <div class="term">
                                <a class="f1" href="https://rules-center.meituan.com/rules-detail/4" target="_blank">《美团点评用户服务协议》</a>
                                <a class="f1" href="https://rules-center.meituan.com/rules-detail/2" target="_blank">《美团点评隐私政策》</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

<!-- 脚部 -->
<footer class="footer--mini">
    <p class="copyright">
        ©<a class="f1" href="https://www.meituan.com">meituan.com</a>&nbsp;
        <a class="f1" target="_blank" href="http://www.miibeian.gov.cn/">京ICP证070791号</a>&nbsp;
        <span class="f1">京公网安备11010502025545号</span>
    </p>
</footer>

</body>
</html>
