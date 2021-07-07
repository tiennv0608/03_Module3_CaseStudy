<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 7/6/2021
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>--%>


</head>
<style>
    legend{
        color:#141823;
        font-size:25px;
        font-weight:bold;
    }
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
        border: solid #3b6e22  1px;
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
    .navbar-default .navbar-brand{
        color:#fff;
        font-size:30px;
        font-weight:bold;
    }
    .form .form-control { margin-bottom: 10px; }
    @media (min-width:768px) {
        #home{
            margin-top:50px;
        }
        #home .slogan{
            color: #0e385f;
            line-height: 29px;
            font-weight: bold;
        }
    }
</style>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info" >
            <div class="panel-heading">
                <div class="panel-title">Sign In</div>
                <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a>
                </div>
            </div>

            <div style="padding-top:30px" class="panel-body">

                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                <form method="get" id="loginform" class="form-horizontal" role="form" action="login">
                    <input type="hidden" name="action" value="login">
                       <p class="text-danger">${message}</p>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="login-username" type="text" class="form-control" name="username"
                               placeholder="username or email">
                    </div>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="login-password" type="password" class="form-control" name="password"
                               placeholder="password">
                    </div>


                    <div class="input-group">
                        <div class="checkbox">
                            <label>
                                <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                            </label>
                        </div>
                    </div>


                    <div style="margin-top:10px" class="form-group">
                        <!-- Button -->

                        <div class="col-sm-12 controls">
                            <button class="btn btn-info" >login</button>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-md-12 control">
                            <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%">
                                Don't have an account!
                                <a href="/signup.jsp" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                    Sign Up Here
                                </a>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>

</div>

</body>
</html>
