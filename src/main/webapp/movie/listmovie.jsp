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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Time</th>
        <th scope="col">Director</th>
        <th scope="col">Category</th>
        <th scope="col">Description</th>
        <th scope="col">Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="movie" items="${movies}">

    <tr>
        <th scope="row"><c:out value = "${movie.id}"/></th>
        <td><c:out value = "${movie.nameMovie}"/></td>
        <td><c:out value = "${movie.time}"/></td>
        <td><c:out value = "${movie.director}"/></td>
        <td><c:out value = "${movie.category}"/></td>
        <td><c:out value = "${movie.description}"/></td>
        <td><a href="<c:out value = "${movie.image}"/>"></a></td>
    </tr>

    </c:forEach>
    </tbody>
</table>
</body>

</html>
