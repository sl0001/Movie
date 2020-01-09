<%--
  Created by IntelliJ IDEA.
  User: 呵呵丶丶呵呵
  Date: 2019/12/23
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".film").click(function () {
                var filmName = $(this).find("li:first-of-type").text();
                $.ajax({
                    url:"${pageContext.request.contextPath}/order/filmInfo",
                    type: "POST",
                    data: {"filmName":filmName},
                    dataType: "json",
                    success: function(respData){
                        if(respData == true){
                            window.location.href="${pageContext.request.contextPath}/cinema";
                        }
                    }
                })
            })

        })
    </script>
</head>
<body>

    <c:forEach items="${filmList}" var="film">
        <ul class="film">
            <li>${film.filmname}</li>
            <li style="background-color: #ff3ada">购票</li>
        </ul>
    </c:forEach>
    <img src="${pageContext.request.contextPath}/image/deng.png">
</body>
</html>
