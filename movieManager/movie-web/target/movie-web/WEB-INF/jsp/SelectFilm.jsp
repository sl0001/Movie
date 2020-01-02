<%--
  Created by IntelliJ IDEA.
  User: 时贝妮
  Date: 2019/12/31
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body>

<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询电影</h1>

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
</body>
</html>
