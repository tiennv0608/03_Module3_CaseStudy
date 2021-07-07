<%--
  Created by IntelliJ IDEA.
  User: Admin-Thính
  Date: 7/7/2021
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Movie</title>
</head>
<body>
<form method="get">
    <select name="name">
        <option value="Kinh di">Kinh di</option>
        <option value="Hanh dong">Hanh dong</option>
        <option value="Lang man">Lang man</option>
        <option value="Tre em">Tre em</option>
        <option value="Hai kich">Hai kich</option>
    </select>
    <input type="hidden" name="action" value="search">
    <input type="submit" value="search movie">
</form>
<h1 align="center">danh sach phim</h1>
<h2 align="center"><a href=${pageContext.request.contextPath}/movies?action=create>add new movie</a></h2>
<table border="1" align="center">
    <tr>
        <td>Name</td>
        <td>Image</td>
        <td>Category</td>
    </tr>
    <c:forEach items="${movies}" var="movie">
            <tr>
                <td><c:out value="${movie.nameMovie}"></c:out></td>
                <td><img src="${movie.image}" alt="" style="width: 100px"></td>
<%--                <td><c:out value="${movie.image}"></c:out></td>--%>
                <td><c:out value="${movie.category}"></c:out></td>
            </tr>
        </c:forEach>
</table>
</body>
</html>
