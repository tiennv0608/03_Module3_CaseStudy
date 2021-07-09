<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Tien
  Date: 07/07/2021
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>Member Information</h1>
    <h1>XLXX.COM</h1>
    <h1>PHIMJAVUYTIN</h1>
    <c:if test="${user != null}">
        <input type="hidden" name="password" value="<c:out value='${user.password}'/>"/>
    </c:if>
    <form action="">
        <table border="1">
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" value="${user.username}"></td>
            </tr>
            <tr>
                <td>Fullname:</td>
                <td><input type="text" name="fullname" value="${user.fullName}"></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><select name="gender" id="">
                    <option value="Nam">Nam</option>
                    <option value="Nu">Nu</option>
                </select></td>
            </tr>
            <tr>
                <td>Year of birth:</td>
                <td><input type="text" name="year" value="${user.dob}"></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" value="${user.phone}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="${user.email}"></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" value="${user.address}"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
