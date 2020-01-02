<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/13
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>龙眼Film Main</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body style="margin: auto 0px">
<div id="header" style=" margin-left: 100px">
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
        <li class="layui-nav-item " style="margin-right: 400px">
            <a href=""style="color: #0C0C0C">商城</a>
        </li>

        <li class="layui-nav-item">
            <c:if test="${user eq null or user eq ''}">
                <a href="javascript:; " style="color: #0C0C0C">
                    <img src="https://p0.meituan.net/movie/7dd82a16316ab32c8359debdb04396ef2897.png" class="layui-nav-img">
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/loginUI">登录</a></dd>
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

<div class="layui-carousel" id="test1" >

    <div carousel-item  style="width: 95%;margin-left: 40px;height:350px ">
        <img src="${pageContext.request.contextPath}/movieImg/filmImg/bangexiju.PNG"/>
        <img src="${pageContext.request.contextPath}/movieImg/filmImg/bangxijunv.PNG"/>
    </div>
</div>
<br>
<br>
<br>
<br>
<br>
<div class="layui-container" style="width: 95%">
    <div class="layui-row">
        <div class="layui-col-md8">
            <h1 style="margin-bottom: 20px;color:#FF5722;">正在热映(10) &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-size: 15px;color:#FF5722">全部 ></a></h1>

           <ul class="film" style="margin-bottom: 20px">
               <c:forEach var="showtime" items="${showTimes}">
                   <li style="margin-right: 20px;margin-bottom:20px">
                       <img src="${pageContext.request.contextPath}/${showtime.posterurl}" style=" width:190px; height:270px"/>
                       <div class="buyTicket" style="text-align: center">
                           <span style="display:block">${showtime.filmname}</span>
                           <a href="${pageContext.request.contextPath}/film/filmInfo?filmName=${showtime.filmname}" style="font-size: 25px;color: #eb7350">购票</a>
                       </div>
                   </li>
               </c:forEach>
           </ul>

        </div>
        <div class="layui-col-md4">
            <h1 style="color: #FF5722">今日票房</h1>
            <ul style="margin-top: 20px">
                <c:forEach items="${offices}" var="office" varStatus="i">

                    <c:if test="${i.index ==0}">
                        <li style="background: #D0D0D0;">
                            <img style="height: 80px;width: 100px">
                            <div style="display: inline-block">
                                <a style="font-size: 25px;">${office.filmname}</a>
                                <p style="color: #FF5722">${office.boxoffice}亿</p>
                            </div>
                        </li>
                    </c:if>
                    <c:if test="${i.index ==1}">
                        <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                            <span style="font-size: 27px;color: #eb7350 ;font-weight: bold">${i.index+1}</span>
                            &nbsp; &nbsp;
                            <a style="font-size: 23px">${office.filmname}</a>
                            <a style="color:#FFFF00;border:#FFFF00 1px solid">${office.boxoffice}亿</a>
                        </li>

                    </c:if>
                    <c:if test="${i.index ==2}">
                        <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                            <span style="font-size: 25px;color: #eb7350 ;">${i.index+1}</span>
                            &nbsp; &nbsp;
                            <a style="font-size: 23px">${office.filmname}</a>
                            <a style="color:#FFFF00;border:#FFFF00 1px solid">${office.boxoffice}亿</a>
                        </li>
                    </c:if>
                    <c:if test="${i.index >3}">
                        <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                            <span style="font-size: 21px;color: #c0c4cc">${i.index+1}</span>
                            &nbsp; &nbsp;
                            <a style="font-size: 23px">${office.filmname}</a>
                            <a style="color:#FFFF00;border:#FFFF00 1px solid">${office.boxoffice}亿</a>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>

        </div>
    </div>
</div>
<br>
<br>
<br>
<div class="layui-container" style="width: 95%">
    <div class="layui-row">
        <div class="layui-col-md8">
            <h1 style="margin-bottom: 20px;color: #1E9FFF">即将上映 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-size: 15px;color:#1E9FFF">全部 ></a></h1>

            <ul class="film" style="margin-bottom: 20px" >
                <c:forEach items="${lessTimes}" var="lessTime">
                    <li style="margin-right: 20px;margin-bottom:20px;">
                        <img src="${pageContext.request.contextPath}/${lessTime.posterurl}" style=" width:190px; height:270px"/>
                        <div class="buyTicket" style="text-align: center;padding-top: 10px">
                            <span style="display:block">${lessTime.filmname}</span>
                            <a href="${pageContext.request.contextPath}/filmInfo" style="font-size: 25px;color: #eb7350">预售</a>
                          </div>
                    </li>
                </c:forEach>
            </ul>

        </div>
        <div class="layui-col-md4">
            <h1 style="color: #FFFF00">最受期待</h1>
            <ul style="margin-top: 20px">
                <c:forEach varStatus="i" items="${expects}" var="expect">

                        <c:if test="${i.index ==0}">
                            <li style="background: #D0D0D0;">
                                <img style="height: 80px;width: 100px">
                                <div style="display: inline-block">
                                    <a style="font-size: 25px;">${expect.filmname}</a>
                                    <p style="color: #FFFF00">${expect.expect}万人想看</p>
                                </div>
                            </li>
                        </c:if>
                        <c:if test="${i.index ==1}">
                            <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                                <span style="font-size: 27px;color: #eb7350 ;font-weight: bold">${i.index+1}</span>
                                &nbsp; &nbsp;
                                <a style="font-size: 25px;">${expect.filmname}</a>
                                <a style="color:#FFFF00;border: #FFFF00 1px solid">${expect.expect}万人想看</a>

                            </li>

                        </c:if>
                        <c:if test="${i.index ==2}">
                            <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                                <span style="font-size: 25px;color: #eb7350 ">${i.index+1}</span>
                                &nbsp; &nbsp;
                                <a style="font-size: 25px;">${expect.filmname}</a>
                                <a style="color:#FFFF00;border: #FFFF00 1px solid">${expect.expect}万人想看</a>

                            </li>
                        </c:if>
                        <c:if test="${i.index >3}">
                            <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                                <span style="font-size: 21px;color: #c0c4cc">${i.index+1}</span>
                                &nbsp; &nbsp;
                                <a style="font-size: 25px;">${expect.filmname}</a>
                                <a style="color:#FFFF00;border: #FFFF00 1px solid">${expect.expect}万人想看</a>

                            </li>
                        </c:if>
                </c:forEach>
            </ul>

        </div>
    </div>
</div>
<br>
<br>
<br>
<div class="layui-container" style="width: 95%">
    <div class="layui-row">
        <div class="layui-col-md8">
            <h1 style="margin-bottom: 20px;color: #FF5722">热播电影 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-size: 15px;color: #FF5722">全部 ></a></h1>

            <ul class="film" style="margin-bottom: 20px" >
                <c:forEach var="showtime" items="${showTimes}">
                    <li style="margin-right: 20px;margin-bottom:20px">
                        <img src="${pageContext.request.contextPath}/${showtime.posterurl}" style=" width:190px; height:270px"/>
                        <div class="buyTicket" style="text-align: center">
                            <span style="display:block">${showtime.filmname}</span>
                            <a href="${pageContext.request.contextPath}/filmInfo" style="font-size: 25px;color: #eb7350">购票</a>
                        </div>
                    </li>
                </c:forEach>
            </ul>

        </div>
        <div class="layui-col-md4">
            <h1 style="color:#FFFF00">TOP 100</h1>
            <ul style="margin-top: 20px">
                <c:forEach varStatus="i" items="${scores}" var="score">

                    <c:if test="${i.index ==0}">
                        <li style="background: #D0D0D0;">
                            <img style="height: 80px;width: 100px">
                            <div style="display: inline-block">
                                <a style="font-size: 25px;">${score.filmname}</a>
                                <p style="color: #FFFF00">${score.filmscore}</p>
                            </div>
                        </li>
                    </c:if>
                    <c:if test="${i.index ==1}">
                        <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                            <span style="font-size: 27px;color: #eb7350 ;font-weight: bold">${i.index+1}</span>
                            &nbsp; &nbsp;
                            <a style="font-size: 25px;">${score.filmname}</a>
                            <a style="color:#FFFF00;border: #FFFF00 1px solid">${score.filmscore}</a>
                        </li>

                    </c:if>
                    <c:if test="${i.index ==2}">
                        <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                            <span style="font-size: 25px;color: #eb7350 ">${i.index+1}</span>
                            &nbsp; &nbsp;
                            <a style="font-size: 25px;">${score.filmname}</a>
                            <a style="color:#FFFF00;border: #FFFF00 1px solid">${score.filmscore}</a>
                        </li>
                    </c:if>
                    <c:if test="${i.index >3}">
                        <li style="height: 25px;padding: 10px 0px;margin: 5px 1px">
                            <span style="font-size: 21px;color: #c0c4cc">${i.index+1}</span>
                            &nbsp; &nbsp;
                            <a style="font-size: 25px;">${score.filmname}</a>
                            <a style="color:#FFFF00;border: #FFFF00 1px solid">${score.filmscore}</a>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>

        </div>
    </div>
</div>
<br>
<br>

<div class="footer" style="background:#2E2D3C;text-align: center;color: whitesmoke">
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
            $(".buyTicket").hover(function () {
                $(this).css("background","#D0D0D0")
            }).mouseleave(function () {
                $(this).css("background","white")
            })
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
</script>

</body>
</html>