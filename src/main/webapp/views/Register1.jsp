<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Include the above in your HEAD tag -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <style type="text/css">
        .form-gap {
            padding-top: 70px;
        }
    </style>
</head>

<body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">

    <div class="form-gap"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3>
                                <i class="fa fa-lock fa-4x"></i>
                            </h3>
                            <h2 class="text-center">Enter OTP</h2>
                            <div class="panel-body">
                                <!-- Form -->
                                <form id="register-form" action="Registerverify" role="form" autocomplete="off"
                                    class="form" method="post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input id="otp" name="otp" placeholder="Enter OTP" class="form-control"
                                                type="password" required="required" onpaste="return false;">
                                            <span class="input-group-addon" id="toggleIcon">
                                                <i id="visibilityIcon" class="glyphicon glyphicon-eye-open"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input name="recover-submit" class="btn btn-lg btn-primary btn-block"
                                            value="Register Successfully" type="submit">
                                    </div>
                                    <input type="hidden" class="hide" name="token" id="token" value="">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Toggle Visibility Script -->
    <script>
        $(document).ready(function () {
            var passwordField = $("#otp");
            var visibilityIcon = $("#visibilityIcon");

            $("#toggleIcon").click(function () {
                if (passwordField.attr("type") === "password") {
                    passwordField.attr("type", "text");
                    visibilityIcon.removeClass("glyphicon-eye-open").addClass("glyphicon-eye-close");
                } else {
                    passwordField.attr("type", "password");
                    visibilityIcon.removeClass("glyphicon-eye-close").addClass("glyphicon-eye-open");
                }
            });
        });
    </script>

</body>

</html>
