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
    <title>add movie</title>
</head>
<body>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>add new movie</h2>
            </caption>
            <tr>
                <td>add id</td>
                <td><input type="text" name="id" id="id" size="45"></td>
            </tr>
            <tr>
                <td>add nameMovie</td>
                <td><input type="text" name="nameMovie" id="nameMovie" size="45"></td>
            </tr>
            <tr>
                <td>add time</td>
                <td><input type="text" name="time" id="time" size="45"></td>
            </tr>
            <tr>
                <td>add director</td>
                <td><input type="text" name="director" id="director" size="45"></td>
            </tr>
            <tr>
                <td>add image</td>
<%--                <td><input type="text" name="image" id="image" size="45"></td>--%>


            <td><input type="file" name="image" class="form-control-file" id="exampleFormControlFile1"></td>

    <
            </tr>
            <tr>
                <td>add category</td>
                <td><input type="text" name="category" id="category" size="45"></td>
            </tr>
            <tr>
                <td>add description</td>
                <td><input type="text" name="description" id="description" size="45"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save">
                </td>
            </tr>

        </table>

    </form>
</div>

</body>
</html>
