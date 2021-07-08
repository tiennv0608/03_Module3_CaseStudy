    <%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/7/2021
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add movie</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<body>
<%--<div align="center">--%>
<%--    <form method="post">--%>
<%--        <table border="1" cellpadding="5">--%>
<%--            <caption>--%>
<%--                <h2>Add new movie</h2>--%>
<%--            </caption>--%>
<%--            <tr>--%>
<%--                <td>Id</td>--%>
<%--                <td><input type="text" name="id" id="id" size="45"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Movie name</td>--%>
<%--                <td><input type="text" name="nameMovie" id="nameMovie" size="45"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td class>Time</td>--%>
<%--                <td><input type="text" name="time" id="time" size="45"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Director</td>--%>
<%--                <td><input type="text" name="director" id="director" size="45"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Img</td>--%>
<%--&lt;%&ndash;                <td><input type="text" name="image" id="image" size="45"></td>&ndash;%&gt;--%>


<%--            <td><input type="file" name="image" class="form-control-file" id="exampleFormControlFile1"></td>--%>

<%--    <--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Category</td>--%>
<%--                <td><input type="text" name="category" id="category" size="45"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>Description</td>--%>
<%--                <td><input type="text" name="description" id="description" size="45"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td colspan="2" align="center">--%>
<%--                    <input type="submit" value="Save">--%>
<%--                </td>--%>
<%--            </tr>--%>

<%--        </table>--%>

<%--    </form>--%>
</div>

<form method="post" class="form-horizontal">

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="movie_id">MOVIE ID</label>
            <div class="col-md-4">
                <input id="movie_id" name="movie_id" placeholder="Movie ID" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="movie_name">MOVIE NAME</label>
            <div class="col-md-4">
                <input id="movie_name" name="movie_name" placeholder="NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="movie_director">DIRECTOR </label>
            <div class="col-md-4">
                <input id="movie_director" name="movie_director" placeholder="DIRECTOR" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="movie_category">CATEGORY</label>
            <div class="col-md-4">
                <select id="movie_category" name="movie_category" class="form-control">
                    <option >Hài kịch</option>
                    <option>Kinh dị</option>
                    <option>Hành động</option>
                    <option>Tình cảm lãng mạn</option>
                    <option>Khoa học viễn tưởng</option>
                    <option>Lịch sử</option>
                    <option>Khoa học</option>
                    <option>Chiến tranh</option>
                    <option>Kiếm hiệp</option>
                    <option>18+</option>
                    <option>Cổ trang</option>
                    <option>Phiêu lưu</option>
                    <option>Tài liệu</option>
                    <option>Hoạt hình</option>

                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="movie_time">TIME</label>
            <div class="col-md-4">
                <input id="movie_time" name="movie_time" placeholder="TIME" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">DESCRIPTION</label>
            <div class="col-md-4">
                <textarea class="form-control" id="product_description" name="product_description"></textarea>
            </div>
        </div>


        <!-- Text input-->
        <div class="form-group">
                <!-- File Button -->
                <div class="form-group">
                    <div class="col-md-4">
                        <input id="filebutton" name="srcimg" class="input-file" type="file">
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <div class="col-md-4">
                        <button id="singlebutton" name="create" class="btn btn-primary">CREATE</button>
                    </div>
                </div>


</form>
</body>
</html>
