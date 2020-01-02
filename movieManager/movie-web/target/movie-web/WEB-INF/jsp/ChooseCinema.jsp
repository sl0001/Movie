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
            <a href="javascript:;"  style="color: #0C0C0C">
                郑州
            </a>
            <dl class="layui-nav-child" style="overflow-y: scroll;height: 200px" >
                <c:forEach begin="1" end="10" varStatus="i">
                    <dd><a href="">${i.index}</a></dd>
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
        <div style="display:inline-block;font-size: 18px;color: #8D8D8D">品牌</div>
        <ul class="show-film-type" style="display:inline-block;margin-left: 20px;margin-right: 20px"  >
            <li style="background: #eb7350;border-radius: 15px">
                <a>全部</a>
            </li>
            <c:forEach begin="1" end="10">
                <li>
                    <a>电影院品牌</a>
                </li>
            </c:forEach>
        </ul>
        &nbsp;
        &nbsp;
        <div style="display:inline-block;color: #8D8D8D;font-size: 18px">行政区</div>
        <ul class="show-film-address" style="display:inline-block;margin-left: 20px;margin-right: 20px" >
            <li style="background: #eb7350;border-radius: 15px">
                <a>全部</a>
            </li>
            <c:forEach begin="1" end="10">
                <li>
                    <a>行政区名字</a>
                </li>
            </c:forEach>
        </ul>
        &nbsp;
        &nbsp;
        <div style="display:inline-block;color: #8D8D8D;font-size: 18px">特殊厅</div>
        <ul class="show-film-years" style="display:inline-block ;margin-left: 20px;margin-right: 20px" >
            <li style="background: #eb7350;border-radius: 15px">
                <a>全部</a>
            </li>
            <c:forEach begin="1" end="10">
                <li>
                    <a>特殊厅名字</a>
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
<div style="text-align: center">
    <div id="test1"></div>
</div>
<br>
<br>
<br>
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
    <br style="padding: 20px 40px">
</div>
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
            $(this).css("color","#eb7350")
            $(this).siblings().css({"color":"#D0D0D0"})
        })
        $(".show-film-type li,.show-film-address li,.show-film-years li").click(function () {
            $(this).css({"background": "#eb7350","border-radius":" 15px"})
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

</body>
</html>
