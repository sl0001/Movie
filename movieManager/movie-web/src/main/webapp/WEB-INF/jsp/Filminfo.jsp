<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/23
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影详细信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Filminfo.css" >
</head>
<body>
<div id="header" style=" margin-left: 100px;">
    <ul class="layui-nav " style=" background: white;" >
        <li class="layui-nav-item ">
            <a href=""><img src="${pageContext.request.contextPath}/movieImg/image/longyanlogo.png"/> </a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;"  style="color: #0C0C0C">
                郑州
            </a>
            <dl class="layui-nav-child"  style="overflow-y: scroll;height: 200px">
                <c:forEach begin="1" end="100" varStatus="i">
                    <dd ><a href="">市区</a></dd>
                </c:forEach>

            </dl>
        </li>
        <li class="layui-nav-item ">
            <a href="${pageContext.request.contextPath}/mainUI" style="color: #0C0C0C">首页</a>
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
        <li class="layui-nav-item">
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
<div class="banner" style="background:midnightblue;">
        <div class="wrapper clearfix">
            <div class="celeInfo-left">
                <div class="avatar-shadow">
                    <img class="avatar" src="${pageContext.request.contextPath}/${filmON.posterurl}" alt="">
                    <div class="movie-ver"></div>
                </div>
            </div>
            <div class="celeInfo-right clearfix">
                <div class="movie-brief-container" >
                    <h3 class="name">${filmON.filmname}</h3>
                    <ul>
                        <li class="ellipsis">${filmON.filmtype}</li>
                        <li class="ellipsis">
                            ${filmON.filmarea}
                            / ${filmON.duration}分钟
                        </li>
                        <li class="ellipsis">${showTime}${filmON.filmarea}</li>
                    </ul>
                </div>
                <div class="action-buyBtn">
                    <div class="action clearfix" data-val="{movieid:1250662}">
                        <a class="wish " data-wish="false" data-score="" data-bid="b_gbxqtw6x">
                            <div>
                                <i class="icon wish-icon"></i>
                                <span class="wish-msg" data-act="wish-click">想看</span>
                            </div>
                        </a>
                        <a class="score-btn " data-bid="b_rxxpcgwd">
                            <div>
                                <i class="icon score-btn-icon"></i>
                                <span class="score-btn-msg" data-act="comment-open-click"> 评分</span>
                            </div>
                        </a>
                    </div>
                    <a class="btn buy" href="${pageContext.request.contextPath}/film/cinemaInfo" target="_blank">特惠购票</a>
                </div>

                <div class="movie-stats-container">

                    <div class="movie-index">
                        <p class="movie-index-title">用户评分</p>
                        <div class="movie-index-content score normal-score">
              <span class="index-left info-num ">
                <span class="stonefont">${filmON.filmscore}</span>
              </span>
                            <div class="index-right">
                                <div class='star-wrapper'>
                                    <div class="star-on" style="width:83%;"></div>
                                </div>
                                <span class='score-num'><span class="stonefont">${filmON.expect}万</span>人评分</span>
                            </div>
                        </div>
                    </div>
                    <div class="movie-index">
                        <p class="movie-index-title">累计票房</p>
                        <div class="movie-index-content box">
                            <span class="stonefont">${filmON.boxoffice}</span><span class="unit">亿</span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
<br>
<br>
<br>
<div class="layui-container" style="width: 95%">
    <div class="layui-row">
        <div class="layui-col-md8" style="padding-left: 125px">
            <%--  电影详细介绍小目录      --%>
            <div class="filminfo-content-directory" style="border-bottom: #D9D9D9 3px solid;padding:10px 0px" >
                <a  style="font-size: 20px;padding-bottom: 10px;margin-right: 10px;color: #df2d2d;border-bottom: #df2d2d 3px solid">
                    介绍
                </a>
                <a>演职人员</a>
                <a>奖项</a>
                <a>图集</a>
            </div>
            <br>
            <br>
            <br>
            <%-- 电影简介 --%>
            <div class="filminfo-content-body" >
                <h2 style="border-left: #FD482C 5px solid;padding-left: 6px ;">剧情介绍</h2>
                <br>
                <br>
                <%-- 电影简介内容 --%>
                <div class="text" style="">
                    ${filmON.filmintro}
                </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <div class="filminfo-actor">
                <h2 style="border-left: #FD482C 5px solid;padding-left: 6px ;">职演人员</h2>
                <br>
                <br>
                <%-- 职演人员 --%>
                <div class="actor" style="">
                    <c:forEach begin="0" end="5">
                        <img style="height:150px;width: 110px;margin: 10px">
                    </c:forEach>
                </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <div>
                <h2 style="border-left: #FD482C 5px solid;padding-left: 6px ;">图集</h2>
                <br>
                <br>
                <%-- 电影简介内容 --%>
                <div class="photo" style="">
                    <c:forEach begin="0" end="5">
                        <img style="height:150px;width: 110px;margin: 10px">
                    </c:forEach>
                </div>
            </div>
            <br>
            <br>
            <br>
            <br>


        </div>
        <div class="layui-col-md4">
        <div>

        </div>
        </div>
    </div>
</div>




<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
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
<script>
    $(function () {
        $(".filminfo-content-directory a:gt(0)").css({"font-size": "20px","padding":"10px","margin":" 0px 10px" })

        $(".filminfo-content-directory a").click(function () {
            $(this).css({"border-bottom": "#df2d2d 3px solid","color":"#df2d2d"})
            $(this).siblings().css({"border-bottom": "#D0D0D0 0px solid","color":" black"})
        })
    })
</script>

</body>
</html>
