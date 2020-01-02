<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/16
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">龙眼Film后台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a >控制台</a></li>
            <li class="layui-nav-item"><a >商品管理</a></li>
            <li class="layui-nav-item"><a >用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">所有商品</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="javascript:;">列表三</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">云市场</a></li>
                <li class="layui-nav-item"><a href="">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <div class="layui-tab" lay-filter="test">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="11">添加电影</li>
                <li lay-id="22" class="addcinema">添加影院</li>
                <li lay-id="33" id="select22">查询电影</li>
                <li lay-id="44">商品管理</li>
                <li lay-id="55">订单管理</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加电影</h1>
                    <br/>
                    <br/>
                    <div class="fileupload" style=" padding-left: 50px;">
                        <form class="layui-form" action="${pageContext.request.contextPath}/film/addFilm" method="post">
                            <div class="layui-form-item">
                                <label class="layui-form-label"> 电影海报：</label>
                                <div>
                                    <img class="filmphoto" style="width: 100px;height: 120px"/>
                                    <input class="filmPhotoUrl" name="posterurl" type="text" style="display: none"/>
                                    <br>
                                    <br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input id="filetouxiang" type="file" name="touxang"/>
                                    <br>
                                    <br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input class="uploadbtn" type="button" value="上传"/>
                                </div>

                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">电影名</label>
                                <div class="layui-input-block">
                                    <input type="text" name="filmname" required  lay-verify="required" placeholder="请输入电影名" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">电影类型</label>
                                <div class="layui-input-block">
                                    <input type="text" name="filmtype" required  lay-verify="required" placeholder="请输入电影类型" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">电影区域</label>
                                <div class="layui-input-block">
                                    <input type="text" name="filmarea" required  lay-verify="required" placeholder="请输入电影区域" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">语言版本</label>
                                <div class="layui-input-block">
                                    <input type="text" name="language" required  lay-verify="required" placeholder="请输入语言版本" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">累计票房</label>
                                <div class="layui-input-block">
                                    <input type="text" name="boxoffice"   placeholder="请输入票房数量" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">评分</label>
                                <div class="layui-input-block">
                                    <input type="text" name="filmscore" placeholder="请输入评分" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                                &nbsp;
                            <div class="layui-form-item">
                                <label class="layui-form-label">想看量</label>
                                <div class="layui-input-block">
                                    <input type="text" name="expect" placeholder="请输入想看量" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-form-item">
                                    <div class="layui-inline">
                                        <label class="layui-form-label">上映时间</label>
                                        <div class="layui-input-inline">
                                            <input name="time" type="text" class="layui-input" id="showTime2" placeholder="yyyy-MM-dd">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">时长</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="duration" required lay-verify="required" placeholder="请输入电影时长" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">状态</label>
                                <div class="layui-input-block">
                                    <input type="radio" name="state" value="0" title="上映">
                                    <input type="radio" name="state" value="1" title="未上映" checked>
                                </div>
                            </div>

                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label">剧情简介</label>
                                <div class="layui-input-block">
                                    <textarea name="filmintro" placeholder="请输入内容" class="layui-textarea"></textarea>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                        </form>
                 </div>
            </div>
<%--                添加电影院--%>
                <div class="layui-tab-item " style="width: 50%">
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加影院</h1>
                    <br/>
                    <br/>
                    <div class="fileuploadcinema" style=" padding-left: 50px;">
                        <form class="layui-form" action="${pageContext.request.contextPath}/cinema/addCinema" method="post">
                            <div class="layui-form-item">
                                <label class="layui-form-label"> 影院海报：</label>
                                <div>
                                    <img class="cinemaphoto" style="width: 100px;height: 120px"/>
                                    <input class="cinamePhotoUrl" name="imgurl" type="text" style="display: none"/>
                                    <br>
                                    <br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="filecinema" type="file" name="touxang"/>
                                    <br>
                                    <br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input class="cinemauploadbtn" type="button" value="上传"/>
                                </div>

                            </div>


                            <div class="layui-form-item">
                                <label class="layui-form-label">影院名称</label>
                                <div class="layui-input-block">
                                    <input type="text" name="cinemaname" required  lay-verify="required" placeholder="请输入电影名" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">地区</label>
                                <div class="layui-input-block">
                                    市区:
                                    <select class="city" onchange="choseadministrative()" lay-ignore="">

                                    </select>
                                    行政区:
                                    <select class="administrative" name="address" lay-ignore="">
                                      <option disabled>请选择行政区</option>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">详细地址</label>
                                <div class="layui-input-block">
                                    <input type="text" name="address" required  lay-verify="required" placeholder="请输入电影类型" autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label">联系方式</label>
                                <div class="layui-input-block">
                                    <input type="text" name="tel" required  lay-verify="required" placeholder="请输入电影区域" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">影院简介</label>
                                <div class="layui-input-block">
                                    <input type="text" name="language" required  lay-verify="required" placeholder="请输入语言版本" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="layui-tab-item" id="select">
                    <form name="form_selectFilm" id="form_selectFilm" class="layui-form" style="margin-top: 20px" method="post" >
                        <%--条件一：电影名--%>
                        <input type="text" name="filmname" id="filmname" placeholder="请输入电影名" autocomplete="off" class="layui-input" style="width: 150px;margin-left: 20%;display: inline-block">
                        <%-- 条件二：电影类型--%>
                        <div class="layui-input-block" style="margin-left: 10px;display: inline-block;width: 200px">
                            <select name="filmtype" id="filmtype" lay-filter="filmtype">
                                <option value="" selected="">请选择电影类型</option>
                                <option>爱情</option>
                                <option>惊悚</option>
                                <option>武侠</option>
                                <option>历史</option>
                                <option>喜剧</option>
                                <option>动画</option>
                                <option>剧情</option>
                                <option>恐怖</option>
                                <option>科幻</option>
                                <option>动作</option>
                                <option>悬疑</option>
                                <option>犯罪</option>
                                <option>冒险</option>
                                <option>战争</option>
                                <option>奇幻</option>
                                <option>运动</option>
                                <option>西部</option>
                                <option>传记</option>
                                <option>歌舞</option>
                                <option>纪录片</option>
                            </select>
                        </div>
                        <%--条件三：电影状态--%>
                        <div class="layui-input-block" style="margin-left: 10px;display: inline-block;width: 200px">
                            <select name="state" id="state" lay-filter="state">
                                <option value="" selected="">请选择电影状态</option>
                                <option value="0">上映</option>
                                <option value="1">未上映</option>
                            </select>
                        </div>

                        <div class="layui-form-item" style="display: inline-block;margin-left: 15px">
                            <button id="submit_selectFilm" class="layui-btn" lay-submit="" lay-filter="submit">查询</button>
                        </div>
                    </form>
                    <table class="layui-table" id="table_selectFilm" style="margin-top: 20px">
                        <thead>
                        <tr>
                            <th style="display: none">ID</th>
                            <th>电影名称</th>
                            <th>电影类型</th>
                            <th>区域</th>
                            <th>上映时间</th>
                            <th>时长</th>
                            <th>票房</th>
                            <th>评分</th>
                            <th>想看量</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody class="tbody">
                        <c:forEach var="film" items="${films}">
                            <tr>
                                <td style="display: none">${film.id}</td>
                                <td>${film.filmname}</td>
                                <td>${film.filmtype}</td>
                                <td>${film.filmarea}</td>
                                <td>${film.showtime.year}/${film.showtime.month}/${film.showtime.date}</td>
                                <td>${film.duration}</td>
                                <td>${film.boxoffice}</td>
                                <td>${film.filmscore}</td>
                                <td>${film.expect}</td>

                                <td>
                                    <a href="">修改</a>
                                    <a href="">删除</a>
                                </td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <br/>
                    <br/>
                    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
                    <script src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
                    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
                    <script type="text/javascript">
                        //查询数据信息事件
                        $(function () {

                        }
                    </script>
                </div>
                <div class="layui-tab-item ">内容5</div>
                <div class="layui-tab-item " >
                    内容s
                </div>
        </div>
    </div>
</div>
<div class="layui-footer">

</div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script type="text/javascript">
    //查询数据信息事件
    $(function () {

        $("#select22").click(function () {
           $("div#select").siblings("div").hide()
            window.location.href="${pageContext.request.contextPath}/film/allFilms";
        });
    })
</script>

<script>
    $(function () {
        //页面加载显示市区异步请求
            $.post(
              "${pageContext.request.contextPath}/address/showcity",
                function(data){
                    var Nobj="<option value='0'>请选择市区</option>"
                    $(".city").html(Nobj);
                    if(data !=null && data.length >0){
                        for(var i=0;i< data.length;i++){
                            var city=data[i];
                            var obj="<option value='"+ city.id+"'>" +city.address +"</option>"
                            $(".city").append(obj);
                        }
                    }
                },
                  "json"
            )
        //电影海报上传
        $(".uploadbtn").click(function () {
            $.ajaxFileUpload({
                    url : "${pageContext.request.contextPath}/fileuploadMovieImg/uploadFilmImg",
                    fileElementId : "filetouxiang",
                    dataType : 'text',
                    success : function(data) {
                        $(".filmphoto").attr("src","${pageContext.request.contextPath}"+data);
                        $(".filmPhotoUrl").val(data)
                    }
                }
            )
        })
        //影院海报上传
        $(".cinemauploadbtn").click(function () {
            $.ajaxFileUpload({
                    url : "${pageContext.request.contextPath}/fileuploadMovieImg/uploadCinemaImg",
                    fileElementId : "filecinema",
                    dataType : 'text',
                    success : function(data) {
                        alert(data)
                        $(".cinemaphoto").attr("src","${pageContext.request.contextPath}"+data);
                        $(".cinemaPhotoUrl").val(data)
                    }
                }
            )
        })
    })
    //二级菜单 选择市区出现行政区
    function choseadministrative(){
        var url="${pageContext.request.contextPath}/address/showadministrative";
        var parentid =$(".city option:selected").val();
        alert(parentid)
        $.get(
            url,
            "parentid="+parentid,
            function(data){
                $(".administrative").empty();
                var noObj = $("<option/>").val(-1).text('请选择行政区');
                $("administrative").html(noObj);
                if(data != null && data.length > 0){
                    for(var i = 0 ; i < data.length;i++){
                        var administrative = data[i];
                        var obj = $("<option/>").val(administrative.id).text(administrative.address);
                        $(".administrative").append(obj);
                    }
                }
            },
            "json"
        )
    }
</script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabDelete: function(othis){
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };
        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });

    layui.use('form', function(){

        var form = layui.form;
        form.on('.city')
        form.render(); //更新全部
       // form.render('select'); //刷新select选择框渲染
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return true;
        });

    });

    layui.use('laydate', function() {
        var laydate = layui.laydate;

        //国际版
        laydate.render({
            elem: '#showTime'
            , lang: 'en'
        });
    });


    layui.use('laydate', function() {
        var laydate = layui.laydate;

        //国际版
        laydate.render({
            elem: '#showTime2'
            , lang: 'en'
        });
    });


</script>
</body>
</html>
