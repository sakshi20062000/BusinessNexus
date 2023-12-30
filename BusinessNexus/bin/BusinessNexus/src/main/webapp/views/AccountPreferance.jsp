<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
    <!-- CSS -->
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
   <!--navbar--> 
        <header>

           <%--  <%@include file="Navbar.jsp" %> --%>
        </header>
        
    <div class="container">
        <div class="row justify-content-center">
            <div class="sidebar" style="margin-top: 60px;padding: 40px;border: 2px solid black">
                <ul class="nav flex-column"> 
                    <li class="nav-item">
                        <a class="nav-link list-group-item-action active" href="#" style="font-size: 30px; padding-left: 40px;"><strong>Profile Information</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action active" href="#" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;"> Name, Location & Industry <i class="fa fa-long-arrow-right" style="padding-left: 303px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="#" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;"> Personal Information<i class="fa fa-long-arrow-right" style="padding-left: 360px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="Verification" onclick="getPosts(2, '')" style="font-size: 20px; padding-left: 40px;">Verification<i class="fa fa-long-arrow-right" style="padding-left: 445px;" aria-hidden="true"></i></a>
                    </li>
                
            </div>
        </div>
        
        <div class="row justify-content-center">
            <div class="sidebar" style="margin-top: 30px;  padding: 40px;border: 2px solid black">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link list-group-item-action active" href="#" style="font-size: 30px; padding-left: 40px;"><strong>Display</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action active" href="DarkMode" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;">Dark Mode<i class="fa fa-long-arrow-right" style="padding-left: 450px;" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="row justify-content-center">
            <div class="sidebar" style="margin-top: 30px;padding: 40px;border: 2px solid black">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link list-group-item-action active" href="#" style="font-size: 30px; padding-left: 40px;"><strong> General Preferance </strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action active" href="Language" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;">Language<i class="fa fa-long-arrow-right" style="padding-left: 463px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="People_Viewed" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;">People Also Viewed<i class="fa fa-long-arrow-right" style="padding-left: 375px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="People_Unfollowed" onclick="getPosts(2, '')" style="font-size: 20px; padding-left: 40px;">People You Unfollowed <i class="fa fa-long-arrow-right" style="padding-left: 338px;" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        
    </div>
   
</body>
</html>