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
                <div class="movie " data-index="0" data-movieid="1190122" data-bid="b_uup5nnq7" data-act="cinema-movie-click" data-val="{city_id:73, movie_id:1190122, cinema_id:13754}">
                    <img src="" alt="">
                </div>
                <div class="movie " data-index="1" data-movieid="1218273" data-bid="b_uup5nnq7" data-act="cinema-movie-click" data-val="{city_id:73, movie_id:1218273, cinema_id:13754}">
                    <img src="" alt="">
                </div>
                <div class="movie " data-index="2" data-movieid="1298827" data-bid="b_uup5nnq7" data-act="cinema-movie-click" data-val="{city_id:73, movie_id:1298827, cinema_id:13754}">
                    <img src="" alt="">
                </div>


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
        <div class="plist-container ">

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

                </tbody>
            </table>

        </div>

    </div>

    <%--底部--%>
    <div class="footer" style="background:#2E2D3C;text-align: center;color: whitesmoke;margin-top: 50px">
        <br>
        <br>
        <br>
        <p class="friendly-links">
            关于龙眼Film:
            <a href="http://ir.maoyan.com/s/index.php#pageScroll0" target="_blank"style="color: #FF5722">关于我们</a>
            <span></span>
            <a href="http://ir.maoyan.com/s/index.php#pageScroll1" target="_blank"style="color: #FF5722">管理团队</a>
            <span></span>
            <a href="http://ir.maoyan.com/s/index.php#pageScroll2" target="_blank"style="color: #FF5722">投资者关系</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            友情链接 :
            <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan" target="_blank"style="color: #FF5722">美团网</a>
            <span></span>
            <a href="http://www.gewara.com" data-query="utm_source=wwwmaoyan"style="color: #FF5722">格瓦拉</a>
            <span></span>
            <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank"style="color: #FF5722">美团下载</a>
            <span></span>
            <a href="https://www.huanxi.com" data-query="utm_source=maoyan_pc" target="_blank"style="color: #FF5722">欢喜首映</a>
        </p>
        <p class="friendly-links">
            商务合作邮箱：v@maoyan.com
            客服电话：10105335
            违法和不良信息举报电话：4006018900
        </p>
        <p class="friendly-links">
            用户投诉邮箱：tousujubao@meituan.com
            舞弊线索举报邮箱：wubijubao@maoyan.com
        </p>
        <p class="friendly-links  credentials">
            <a href="/about/licence/1" target="_blank"style="color: #dedede">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
            <span></span>
            <a href="/about/licence/4" target="_blank"style="color: #dedede">营业性演出许可证 京演（机构）（2019）4094号</a>
        </p>
        <p class="friendly-links  credentials">
            <a href="/about/licence/3" target="_blank"style="color: #dedede">广播电视节目制作经营许可证 （京）字第08478号</a>
            <span></span>
            <a href="/about/licence/2" target="_blank"style="color: #dedede">网络文化经营许可证 京网文（2019）3837-369号 </a>
        </p>
        <p class="friendly-links  credentials">
            <a href="/rules/agreement" target="_blank"style="color: #dedede">猫眼用户服务协议 </a>
            <span></span>
            <a href="/rules/rule" target="_blank"style="color: #dedede">龙眼Film平台交易规则总则 </a>
            <span></span>
            <a href="/rules/privacy" target="_blank"style="color: #dedede">隐私政策 </a>
        </p>
        <p class="friendly-links  credentials">
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank"style="color: #dedede">京公网安备
                11010102003232号</a>
        </p>
        <p>北京猫眼文化传媒有限公司</p>
        <p>
            &copy;2019
            龙眼Film,longyanfilm.com
        </p>
        <div class="certificate">
            <a href="http://sq.ccm.gov.cn:80/ccnt/sczr/service/business/emark/toDetail/350CF8BCA8416C4FE0530140A8C0957E"
               target="_blank">
                <img src="http://p0.meituan.net/moviemachine/e54374ccf134d1f7b2c5b075a74fca525326.png" />
            </a>
            <a href="/about/licence/5" target="_blank">
                <img src="http://p1.meituan.net/moviemachine/805f605d5cf1b1a02a4e3a5e29df003b8376.png" />
            </a>
        </div>
        <br>
        <br>
        <br>
    </div>
</html>
