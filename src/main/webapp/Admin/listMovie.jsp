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
<title>List Movie</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<body>
<center>
    <h1><a href="/movies">List Movie</a></h1>
    <h2 align="center"><a href=${pageContext.request.contextPath}/movies?action=create>add new movie</a></h2>
    <form method="get" class="form-inline my-2 my-lg-0">
        <input type="hidden" name="action" value="search">
        <input   class="form-control mr-sm-2" type="text" name="key">
        <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Search">
    </form>

    <table  class="table table-striped">
        <thead>
        <tr>
            <td scope="col"></td>
            <td>Name</td>
            <td>Image</td>
            <td>Category</td>
            <td></td>
            <td></td>
            <td scope="col"></td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${movies}" var="movie">
            <tr>
                <td scope="col"></td>
                <td><c:out value="${movie.nameMovie}"></c:out></td>
                <td><img src="${movie.image}" alt=""></td>
                    <%--                <td><c:out value="${movie.image}"></c:out></td>--%>
                <td><c:out value="${movie.category}"></c:out></td>
                <td><a href="/movies?action=edit">Edit</a></td>
                <td><a href="/movies?action=delete&id=${movie.id}">Delete</a></td>
                <td scope="col"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</center>
</body>
</html>
