<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/user/listmovie.jsp">Trang chủ</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="navbarDropdown1" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Phim đang chiếu
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="navbarDropdown2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Phim sắp chiếu
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Thành viên</a>
                </li>
            </ul>
            <form class="d-flex" action="/home" method="post">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            <b>${user.username}</b>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/home?action=view&key=${user.username}">My
                                Information</a></li>
                        </ul>
                    </li>
                </ul>
                <a href="/home" class="nav-link"><b>Logout</b></a>
                <input type="hidden" name="action" value="searchname">
                <input class="form-control me-2" name="key" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<div class="container bootstrap snippets bootdey">
    <h1 class="text-primary"><span class="glyphicon glyphicon-user"></span>Edit Movie</h1>
    <hr>
    <div class="row">
        <div class="col-md-3">
            <img src="${movie.image}" alt="${movie.nameMovie}" style="height: 500px; width: 280px">
        </div>
        <div class="col-md-9 personal-info">
            <h3>Movie info</h3>
            <form class="form-horizontal" role="form" method="post" action="/home">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Movie name:</label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="movie_name"
                               value="${movie.nameMovie}">
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
                    <label class="col-lg-3 control-label">Category: </label>
                    <div class="col-lg-8">
                        <input class="form-control" type="text" name="category" value="${movie.category}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">Description: </label>
                    <div class="col-lg-8">
                        <textarea class="form-control" type="text" name="description"
                                  value="${movie.description}"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <a href="/home" class="btn btn-primary">Back</a>
                </div>
            </form>
        </div>
    </div>
</div>
<hr>
</body>
</html>
