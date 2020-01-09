<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/18
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
</head>
<body style="margin: auto 0px">
<div id="header" style=" margin-left: 100px ">
    <ul class="layui-nav " style=" background: white;" >
        <li class="layui-nav-item ">
            <a href=""><img src="${pageContext.request.contextPath}/movieImg/image/longyanlogo.png"/> </a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:void(0);" id="a"   style="color: #0C0C0C">
                <c:if test="${address == null}">
                    所在城市
                </c:if>
                <c:if test="${address != null}">
                    ${address.address}
                </c:if>
            </a>
            <dl class="layui-nav-child" style="overflow-y: scroll;height: 200px" >
                <c:forEach var="address" items="${addressList}" varStatus="i">
                    <dd><a href="${pageContext.request.contextPath}/cinema/getCinemaInfo?addressId=${address.id}" class="a">${address.address}</a><span class="s" style="display: none">${address.id}</span></dd>
                </c:forEach>
            </dl>
        </li>

        <li class="layui-nav-item ">
            <a href="${pageContext.request.contextPath}/filmMain" style="color: #0C0C0C">首页</a>
        </li>
        <li class="layui-nav-item ">
            <a href="${pageContext.request.contextPath}/chooseFilm"style="color: #0C0C0C">电影</a>
        </li>
        <li class="layui-nav-item ">
            <a href="${pageContext.request.contextPath}/chooseCinema"style="color: #0C0C0C">影院</a>
        </li>
        <li class="layui-nav-item ">
            <a href=""style="color: #0C0C0C">演出</a>
        </li>
        <li class="layui-nav-item ">
            <a href=""style="color: #0C0C0C">榜单</a>
        </li>
        <li class="layui-nav-item ">
            <a href=""style="color: #0C0C0C">热点</a>
        </li>
        <li class="layui-nav-item "style="margin-right: 400px">
            <a href=""style="color: #0C0C0C">商城</a>
        </li>
        <li class="layui-nav-item" >
            <c:if test="${user eq null or user eq ''}">
                <a href="javascript:; " style="color: #0C0C0C">
                    <img src="https://p0.meituan.net/movie/7dd82a16316ab32c8359debdb04396ef2897.png" class="layui-nav-img">
                    &nbsp;
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/loginUser">登录</a></dd>
                </dl>
            </c:if>
            <c:if test="${user ne null and user ne ''}">
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                    <dd><a href="">退出</a></dd>
                </dl>
            </c:if>
        </li>
    </ul>
</div>
<div style="background: #4E5465;text-align: center;height: 40px ;padding-top: 20px" class="film_title">

</div>
<br>
<br>
<br>
<br>
<div class="show-film">
    <div class="show-film-choose" style="width: 72%; margin-left: 13.2%; border: #D0D0D0 1px solid;padding-top:10px">
        &nbsp;
        &nbsp;
        <div style="display:block;font-size: 18px;color: #8D8D8D">品牌</div>
        <ul class="show-film-type" style="display:inline-block;margin-left: 20px;margin-right: 20px"  >
            <li style="background: #eb7350;border-radius: 15px">
                <a>全部</a>
            </li>
            <c:forEach items="${cinemaBands}" var="band">
                <li>
                    <a href="javascript:void(0);">${band.name}</a>
                </li>
            </c:forEach>
        </ul>
        &nbsp;
        &nbsp;
        <div style="display:block;color: #8D8D8D;font-size: 18px">行政区</div>
        <ul class="show-film-address" style="display:inline-block;margin-left: 20px;margin-right: 20px" >
            <li style="background: #eb7350;border-radius: 15px">
                <a>全部</a>
            </li>
            <c:forEach items="${addresses}" var="address">
                <li>
                    <a href="javascript:void(0);">${address.address}</a>
                </li>
            </c:forEach>
        </ul>

    </div>

</div>
<br>
<br>
<br>
<div class="cinema-body" style="width: 75%; margin-left: 12%;padding-top:10px">
    <h2 style="border-left: #FD482C 5px solid;margin-left: 20px;padding-left: 3px ;">影院列表</h2>
    <br>
    <%--放电影的内容--%>
    <ul class="cinema" style="margin-bottom: 20px">
        <span style="display: none"> 查询的总电影院总数Count</span>
        <c:forEach items="${cinemas}" var="cinema">
            <li style=";margin-left: 20px;margin-bottom:20px;border-bottom: #D0D0D0 1px dashed;padding-bottom: 20px">
                <div style="width: 50%;display:inline-block;padding: 10px">
                    <h3>${cinema.cinemaname}</h3>
                    <h4 style="color: #9F9F9F">电影院具体地址:${cinema.address}</h4>
                </div>
                <div style="width: 45%;display:inline-block; padding: 10px 0px;text-align: right">
                    <a style="font-size: 15px;margin-left: 20px ;background: #FF5722 ;padding: 10px 15px;border-radius: 15px;" href="${pageContext.request.contextPath}/film/recordInfo?cinemaId=${cinema.id}">选择座位</a>
                </div>

            </li>
        </c:forEach>


    </ul>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script>
    $(function () {
        $(".show-film ul li").css({"display":" inline-block","padding": "10px","font-size":"15px"})
        $(".show-film ul li a").css({"color": "#2E2D3C"})
        $(".show-film ul:lt(2)").css({"border-bottom":" #D0D0D0 1px solid"})
        $(".film_title span").css({"font-size":"20px","margin": "20px 40px"})
        $(".film_title span:gt(0)").css({"color":"#D0D0D0"})
        $(".film_title span").click(function () {
            $(this).css("color","#eb491f")
            $(this).siblings().css({"color":"#D0D0D0"})
        })
        $(".show-film-type li,.show-film-address li,.show-film-years li").click(function () {
            $(this).css({"background": "#5d1aeb","border-radius":" 15px"})
            $(this).siblings().css({"background": "white","border-radius":" 0px"})
        })
        var type="";
        var address="";
        var years="";
        $(".show-film-type li").click(function () {
            type=$(this).children("a").text()
        })
        $(".show-film-address li").click(function () {
            address=$(this).children("a").text()
        })
        $(".show-film-years li").click(function () {
            years=$(this).children("a").text()
        })

    })
</script>
<script>
    layui.use('laypage', function(){
        var laypage = layui.laypage;
        var count=100000;
        //执行一个laypage实例
        laypage.render({
            elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
            ,limit:30
            ,count: count //数据总数，从服务端得到
        });
    });
</script>
<script>
    layui.use('element', function(){
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>
<script type="text/javascript">
    $(function () {

    })
</script>
</body>
</html>
