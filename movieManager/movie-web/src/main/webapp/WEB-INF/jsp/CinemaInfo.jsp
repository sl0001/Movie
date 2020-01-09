<%--
  Created by IntelliJ IDEA.
  User: Cuican
  Date: 2019/12/23
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8">
    <title>龙眼Film</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->

<%--    <link rel="stylesheet" href="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/common.0a548310.css" />--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.0a548310.css" />
    <link rel="stylesheet" href="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/cinemas-cinema.c339c8d8.css" />
    <script crossorigin="anonymous" src="//s3plus.meituan.net/v1/mss_e2821d7f0cfe4ac1bf9202ecf9590e67/cdn-prod/file:5788b470/stat.88d57c80.js"></script>

    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

    <script>
        layui.use('carousel', function(){
            var carousel = layui.carousel;
            //建造实例
            carousel.render({
                elem: '#test1'
                ,width: '100%' //设置容器宽度
                // ,arrow: 'always' //始终显示箭头
                ,anim: 'fade' //切换动画方式
            });
        });
    </script>
    <script>
        $(function () {
            $("ul.film li").css("display"," inline-block")

        })
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


        $(function () {

            $(".movie-list div:first").css({"width":"180px","height":"265px"});
            $(".movie-list div:gt('0')").css({"width":"160px","height":"235px"});

            // 轮播图-下一页
            $("#scroll-next").click(function () {
                $(".movie-list div[data-index]:lt('7')").css("display","none");
            });

            // 轮播图-上一页
            $("#scroll-prev").click(function () {
                $(".movie-list div[data-index]:lt('7')").css("display","inline-block");
            });


            $(".movie-list div").click(function () {
                // $(this).className("movie active");
                // alert($(this).className)
                $(this).parent().children().css({"width":"160px","height":"235px"});
                 $(this).css({"width":"180px","height":"265px"});

            });
        });
    </script>



</head>
<html>

    <%--头部--%>
    <div id="header" style=" margin-left: 100px">
        <ul class="layui-nav " style=" background: white;" >
            <li class="layui-nav-item ">
                <a href=""><img src="${pageContext.request.contextPath}/image/longyanlogo.png"/> </a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"  style="color: #0C0C0C">
                    郑州
                </a>
                <dl class="layui-nav-child"  style="overflow-y: scroll;height: 200px">
                    <c:forEach begin="1" end="10" varStatus="i">
                        <dd ><a href="">市区</a></dd>
                    </c:forEach>

                </dl>
            </li>
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
            <li class="layui-nav-item ">
                <a href=""style="color: #0C0C0C">商城</a>
            </li>
            <li class="layui-nav-item " style="padding-left: 20%"></li>
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

    <br>

    <%--中间部分，电影院信息部分--%>
    <div class="banner cinema-banner">
        <div class="wrapper clearfix">
            <div class="cinema-left">
                <div class="avatar-shadow">
    <%--                <img class="avatar" src="https://p0.meituan.net/poi/d50ab9c396641ee5b00e23d1f887e593176128.jpg@292w_292h_1e_1c">--%>
                    <img class="avatar" src="">
                </div>
            </div>

            <div class="cinema-main clearfix">
                <div class="cinema-brief-container">
                    <h3 class="name text-ellipsis">${cinema.cinemaname}</h3>
                    <div class="address text-ellipsis">${cinema.address}</div>
                    <div class="telphone">电话：${cinema.tel}</div>

                    <div class="features-group">
                        <div class="group-title">影院服务</div>
                        <p style="padding-left: 70px">${cinema.intro}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- 轮播图部分--%>
    <div class="container" id="app" class="page-cinemas/cinema" style="margin: 10% 3% 0 6% ">
        <div class="movie-list-container" data-cinemaid="13754">
            <div class="movie-list">
                <c:forEach items="${showTimes}" var="show">
                    <div class="movie " data-index="0" data-movieid="1190122" data-bid="b_uup5nnq7" data-act="cinema-movie-click" data-val="{city_id:73, movie_id:1190122, cinema_id:13754}">
                        <img src="${pageContext.request.contextPath}/${show.posterurl}" alt="">
                    </div>
                </c:forEach>
                <%--指向电影场次的小箭头--%>
<%--                <span class="pointer"></span>--%>
            </div>

            <%-- 轮播图的左右按钮--%>
            <span id="scroll-prev" class="scroll-prev scroll-btn"></span>
            <span id="scroll-next" class="scroll-next scroll-btn"></span>
        </div>
    </div>


<%--    所选择电影的场次信息--%>
    <div class="show-list active" data-index="0" style="margin: 5% 5% 5% 5%">
        <div class="movie-info">
            <div>
                <h3 class="movie-name">${filmON.filmname}</h3>

                <span class="score sc">${filmON.filmscore}</span>

            </div>

            <div class="movie-desc">
                <div>
                    <span class="key">时长 :</span>
                    <span class="value">${filmON.duration}分钟</span>
                </div>
                <div>
                    <span class="key">类型 :</span>
                    <span class="value"> ${filmON.filmtype} </span>
                </div>
                <div>
                    <span class="key">主演 :</span>
                    <span class="value"> <c:forEach items="${actors}" var="actor">${actor.actorname}</c:forEach></span>
                </div>
            </div>
        </div>


        <div class="plist-container active">

            <table class="plist">
                <thead>
                <tr>
                    <th>放映时间</th>
                    <th>语言版本</th>
                    <th>放映厅</th>
                    <th>售价（元）</th>
                    <th>选座购票</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${records}" var="record">
                    <tr class="">
                        <td>
                            <span class="begin-time">${record.starttime.hours}:${record.starttime.minutes}开场</span>
                            <br />
                            <span class="end-time">${record.endtime.hours}:${record.endtime.minutes}散场</span>
                        </td>
                        <td>
                            <span class="lang">${filmON.language}</span>
                        </td>
                        <td>
                            <span class="hall">${record.room.roomname}</span>
                        </td>
                        <td>
                            <span class="sell-price"><span class="stonefont">${record.profit}</span></span>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/order/buySeat?recordId=${record.id}&roomId=${record.room.id}" class="buy-btn normal" data-tip="" data-act="show-click" data-bid="b_gvh3l8gg" data-val="{movie_id: 1190122, cinema_id:13754}">选座购票</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>

        </div>

    </div>

</html>
