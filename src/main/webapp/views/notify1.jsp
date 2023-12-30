<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Business Nexus</title>

    <!-- Add viewport meta tag for responsiveness -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Include Bootstrap CSS and custom CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>

    <style>
        .banner-background {
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
        }
    </style>
</head>

<body style="background-color: #dfdfdf">

<!-- Include a responsive navbar -->
<%@include file="Navbar.jsp"%>

<div style="display: flex;">
    <div style="display: flex; margin: auto; width: 75%">
        <!-- Use Bootstrap's grid system for responsive columns -->
        <div class="container" style="padding-top: 2%;">
            <div class="row mt-4">
                <div class="col-md-4">
                    <!-- Categories -->
                    <a href="follow.jsp" onclick="getPosts(0, this)"
                       class="c-link list-group-item list-group-item-action"
                       style="border: none; font-size: 22px; text-align: center">
                        <strong>Manage Your Notifications</strong>
                    </a>
                    
                     <h1>${users }</h1>
                    <a href="setting" onclick="getPosts(0, this)"
                       class="c-link list-group-item list-group-item-action"
                       style="border: none; font-size: 18px; margin-top: 10px">
                        <span class="fa fa-cog" aria-hidden="true"></span> View Settings
                    </a>
                    <!-- Other categories -->
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<!-- Include Bootstrap JavaScript and your custom JavaScript as needed -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
</body>
</html>