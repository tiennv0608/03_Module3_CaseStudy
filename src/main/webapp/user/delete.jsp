<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 07/08/2021
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<center>
    <form method="post">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="key" value="${user.username}">
        <div>
            <span>Bạn có đồng ý xóa <c:out value="${user.username}"/> không?</span>
            <input type="submit" value="Đồng ý">
            <a href="user/listmovie.jsp">Không</a>
        </div>
    </form>
</center>
</body>
</html>
