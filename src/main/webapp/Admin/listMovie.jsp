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
<center>
    <h1><a href="/movies">List Movie</a></h1>
    <h2 align="center"><a href=${pageContext.request.contextPath}/movies?action=create>add new movie</a></h2>
    <form method="get">
        <input type="hidden" name="action" value="searchname">
        <input type="text" name="key">
        <input type="submit" value="search">
    </form>

    <table border="1">

        <tr>
            <td>Name</td>
            <td>Image</td>
            <td>Category</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>

        <c:forEach items="${movies}" var="movie">
            <tr>
                <td><c:out value="${movie.nameMovie}"></c:out></td>
                <td><img src="${movie.image}" alt=""></td>
                    <%--                <td><c:out value="${movie.image}"></c:out></td>--%>
                <td><c:out value="${movie.category}"></c:out></td>
                <td>Edit</td>
                <td><a href="/movies?action=delete&id=${movie.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
