<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Business Nexus</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        .sidebar-card {
            background-color: transparent;
            border: none;
            box-shadow: none;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-8 sidebar" style="margin-top: 30px; border: 2px solid black; padding: 40px;">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link list-group-item-action active" href="" style="font-size: 30px; padding-left: 40px;"><strong>Account Access</strong></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link c-link list-group-item-action" href="Email_Address" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;">Email Addresses<i class="fa fa-long-arrow-right" style="padding-left: 410px;" aria-hidden="true"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link c-link list-group-item-action" href="Phone_Numbers" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;">Phone Numbers<i class="fa fa-long-arrow-right" style="padding-left: 410px;" aria-hidden="true"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link c-link list-group-item-action" href="Change_Password" onclick="getPosts(2, '')" style="font-size: 20px; padding-left: 40px;">Change Password<i class="fa fa-long-arrow-right" style="padding-left: 395px;" aria-hidden="true"></i></a>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    function getPosts(pageIndex, url) {
        $('.c-link').removeClass('active');
        $('.c-link').eq(pageIndex).addClass('active');
        $('#contentFrame').attr('src', url);
    }
</script>

</body>
</html>
