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
            <form class="form-horizontal" role="form" method="post">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Movie name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="movie_name"
                               value="<c:out value="${movie.nameMovie}"/>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Time:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="movie_time" value="${movie.time}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Director:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="movie_director" value="${movie.director}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Description</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="movie_description" value="${movie.description}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" for="movie_category">Category:</label>
                    <div class="col-lg-8">
                        <select id="movie_category" name="movie_category" class="form-control">
                            <option value="Hai kich">Hài kịch</option>
                            <option value="Kinh di">Kinh dị</option>
                            <option value="Hanh dong">Hành động</option>
                            <option value="Lang man">Lãng mạn</option>
                            <option value="Khoa hoc">Khoa học</option>
                            <option value="Lich su">Lịch sử</option>
                            <option value="Tai lieu">Tài liệu</option>
                            <option value="Hoat hinh">Hoạt hình</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-3">
                        <input id="filebutton" name="movie_image" class="input-file" type="file">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-3">
                        <input name="action" class="button-bar" type="submit" value="Update">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<hr>
</body>
</html>
