<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 7/7/2021
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .signup-btn {
            background: #79bc64;
            background-image: -webkit-linear-gradient(top, #79bc64, #578843);
            background-image: -moz-linear-gradient(top, #79bc64, #578843);
            background-image: -ms-linear-gradient(top, #79bc64, #578843);
            background-image: -o-linear-gradient(top, #79bc64, #578843);
            background-image: linear-gradient(to bottom, #79bc64, #578843);
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            text-shadow: 0px 1px 0px #898a88;
            -webkit-box-shadow: 0px 0px 0px #a4e388;
            -moz-box-shadow: 0px 0px 0px #a4e388;
            box-shadow: 0px 0px 0px #a4e388;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            padding: 10px 20px 10px 20px;
            border: solid #3b6e22 1px;
            text-decoration: none;
        }

        .signup-btn:hover {
            background: #79bc64;
            background-image: -webkit-linear-gradient(top, #79bc64, #5e7056);
            background-image: -moz-linear-gradient(top, #79bc64, #5e7056);
            background-image: -ms-linear-gradient(top, #79bc64, #5e7056);
            background-image: -o-linear-gradient(top, #79bc64, #5e7056);
            background-image: linear-gradient(to bottom, #79bc64, #5e7056);
            text-decoration: none;
        }
    </style>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
<div class="container">
    <div id="signupbox" style="margin-top:50px"
         class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Sign Up</div>
                <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="/login.jsp"
                                                                                           onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
                    In</a></div>
            </div>
            <div class="panel-body">
                <form method="post" id="signupform" class="form-horizontal" role="form" action="/signup.jsp">
                    <input type="hidden" name="action" value="signup">
                    <p class="text-danger">${mess}</p>
                    <div id="signupalert"  class="alert alert-danger">
                        <p>Error:</p>
                        <span></span>
                    </div>

<%--                    <p class="text-danger">${mess1}</p>--%>
                    <%--                    <p class="text-danger">${mess2}</p>--%>
                    <div class="form-group">
                        <label class="col-md-3 control-label">User</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="username" placeholder="User">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Password</label>
                        <div class="col-md-9">
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Re-password</label>
                        <div class="col-md-9">
                            <input type="password" class="form-control" name="repassword" placeholder="Repeat password">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-3 control-label">Full Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="fullname" placeholder="Full Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Phone</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="phone" placeholder="Phone">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-3 control-label">Year of birth</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="year" placeholder="Year of birth">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Adress</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="address" placeholder="Adress">
                        </div>
                    </div>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <button id="btn-signup" type="submit" class="btn btn-info">Signup</button>
                            <span style="margin-left:8px;"></span>
                        </div>
                    </div>


                </form>
            </div>
        </div>

    </div>
</div>
</body>
</html>
