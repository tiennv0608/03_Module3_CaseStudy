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
<%--&lt;%&ndash;<div align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <form method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <table border="1" cellpadding="5">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <caption>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <h2>Add new movie</h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </caption>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Id</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><input type="text" name="id" id="id" size="45"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Movie name</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><input type="text" name="nameMovie" id="nameMovie" size="45"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td class>Time</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><input type="text" name="time" id="time" size="45"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Director</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><input type="text" name="director" id="director" size="45"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Img</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;                <td><input type="text" name="image" id="image" size="45"></td>&ndash;%&gt;&ndash;%&gt;--%>


<%--&lt;%&ndash;            <td><input type="file" name="image" class="form-control-file" id="exampleFormControlFile1"></td>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Category</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><input type="text" name="category" id="category" size="45"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Description</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><input type="text" name="description" id="description" size="45"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td colspan="2" align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input type="submit" value="Save">&ndash;%&gt;--%>
<%--&lt;%&ndash;                </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>

<%--&lt;%&ndash;        </table>&ndash;%&gt;--%>

<%--&lt;%&ndash;    </form>&ndash;%&gt;--%>
<%--</div>--%>

<form class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <legend>PRODUCTS</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>
            <div class="col-md-4">
                <input id="product_id" name="product_id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>
            <div class="col-md-4">
                <input id="product_name_fr" name="product_name_fr" placeholder="PRODUCT DESCRIPTION FR" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>
            <div class="col-md-4">
                <select id="product_categorie" name="product_categorie" class="form-control">
                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="available_quantity">AVAILABLE QUANTITY</label>
            <div class="col-md-4">
                <input id="available_quantity" name="available_quantity" placeholder="AVAILABLE QUANTITY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_weight">PRODUCT WEIGHT</label>
            <div class="col-md-4">
                <input id="product_weight" name="product_weight" placeholder="PRODUCT WEIGHT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">PRODUCT DESCRIPTION</label>
            <div class="col-md-4">
                <textarea class="form-control" id="product_description" name="product_description"></textarea>
            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>
            <div class="col-md-4">
                <textarea class="form-control" id="product_name_fr" name="product_name_fr"></textarea>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="percentage_discount">PERCENTAGE DISCOUNT</label>
            <div class="col-md-4">
                <input id="percentage_discount" name="percentage_discount" placeholder="PERCENTAGE DISCOUNT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="stock_alert">STOCK ALERT</label>
            <div class="col-md-4">
                <input id="stock_alert" name="stock_alert" placeholder="STOCK ALERT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Search input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="stock_critical">STOCK CRITICAL</label>
            <div class="col-md-4">
                <input id="stock_critical" name="stock_critical" placeholder="STOCK CRITICAL" class="form-control input-md" required="" type="search">

            </div>
        </div>

        <!-- Search input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="tutorial">TUTORIAL</label>
            <div class="col-md-4">
                <input id="tutorial" name="tutorial" placeholder="TUTORIAL" class="form-control input-md" required="" type="search">

            </div>
        </div>

        <!-- Search input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="tutorial_fr">TUTORIAL FR</label>
            <div class="col-md-4">
                <input id="tutorial_fr" name="tutorial_fr" placeholder="TUTORIAL FR" class="form-control input-md" required="" type="search">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="online_date">ONLINE DATE</label>
            <div class="col-md-4">
                <input id="online_date" name="online_date" placeholder="ONLINE DATE" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="author">AUTHOR</label>
            <div class="col-md-4">
                <input id="author" name="author" placeholder="AUTHOR" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="enable_display">ENABLE DISPLAY</label>
            <div class="col-md-4">
                <input id="enable_display" name="enable_display" placeholder="ENABLE DISPLAY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="comment">COMMENT</label>
            <div class="col-md-4">
                <input id="comment" name="comment" placeholder="COMMENT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">APPROUVED BY</label>
            <div class="col-md-4">
                <input id="approuved_by" name="approuved_by" placeholder="APPROUVED BY" class="form-control input-md" required="" type="text">

                <!-- File Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">main_image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>
                <!-- File Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">auxiliary_images</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
                    <div class="col-md-4">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
                    </div>
                </div>

    </fieldset>
</form>




</body>
</html>
