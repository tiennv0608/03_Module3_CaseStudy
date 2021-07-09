<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Nguyen Viet Tien--%>
<%--  Date: 07/07/2021--%>
<%--  Time: 10:54 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<center>--%>
<%--    <h1>Member Information</h1>--%>
<%--    <c:if test="${user != null}">--%>
<%--        <input type="hidden" name="password" value="<c:out value='${user.password}'/>"/>--%>
<%--    </c:if>--%>
<%--    <form method="post" action="/home">--%>
<%--        <table border="1">--%>
<%--            <tr>--%>
<%--                <td>Username:</td>--%>
<%--                <td>${user.username}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Fullname:</td>--%>
<%--                <td><input type="text" name="fullname" value="${user.fullName}"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Gender</td>--%>
<%--                <td><select name="gender" id="">--%>
<%--                    <option value="Nam">Nam</option>--%>
<%--                    <option value="Nu">Nu</option>--%>
<%--                </select></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Year of birth:</td>--%>
<%--                <td><input type="text" name="year" value="${user.dob}"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Phone:</td>--%>
<%--                <td><input type="text" name="phone" value="${user.phone}"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Email:</td>--%>
<%--                <td><input type="text" name="email" value="${user.email}"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Address:</td>--%>
<%--                <td><input type="text" name="address" value="${user.address}"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>--%>
<%--                    <input type="hidden" name="username" value="${user.username}">--%>
<%--                    <input type="hidden" name="action" value="edit">--%>
<%--                    <button>Edit</button>`--%>
<%--                </td>--%>
<%--                <td>--%>
<%--                    <a href="/home?action=delete&key=${user.username}">delete</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </form>--%>
<%--</center>--%>
<%--</body>--%>
<%--</html>--%>
<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 07/08/2021
  Time: 10:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container bootstrap snippets bootdey">
    <h1 class="text-primary"><span class="glyphicon glyphicon-user"></span>Edit Movie</h1>
    <hr>
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-9 personal-info">
            <%--            <div class="alert alert-info alert-dismissable">--%>
            <%--                <a class="panel-close close" data-dismiss="alert">×</a>--%>
            <%--                <i class="fa fa-coffee"></i>--%>
            <%--                This is an <strong>.alert</strong>. Use this to show important messages to the user.--%>
            <%--            </div>--%>
            <h3>Movie info</h3>
            <form class="form-horizontal" role="form" method="post" action="/home">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Full name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="fullname"
                               value="${user.fullName}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Year of birth:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="year" value="${user.dob}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Phone:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="phone" value="${user.phone}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="email" value="${user.email}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Address:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="address" value="${user.address}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" for="movie_category">Gender</label>
                    <div class="col-lg-8">
                        <select id="movie_category" name="gender" class="form-control">
                            <option value="Nam">Nam</option>
                            <option value="Nu">Nu</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-3">
                        <input type="hidden" name="action" value="edit">
                        <input type="hidden" name="username" value="${user.username}">
                        <input nclass="button-bar" type="submit" value="Update">
                        <a href="/home?action=delete&key=${user.username}" class="button-bar">delete</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<hr>
</body>
</html>
