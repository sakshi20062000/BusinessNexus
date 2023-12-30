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
        </style>
    </head>
    <body>
        <div class="container" style="border: 1px solid black; width: 60%; margin: 50px 0 0 200px; padding-left: 40px">
            <a href="Sign_Security" style="text-decoration: none;">
                <div class="one" style="display: flex; margin: 25px 0 0 0; cursor: pointer;">
                    <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
                    <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
                </div>
            </a>
            <div class="two" style="margin: 25px 0 0 0;">
                <h4 style="font-size: 17px;">Email Addresses</h4>
                <p style="font-size: 14px">Email You've added</p>
            </div>
            <div class="three" style="margin: 25px 0 0 0;">
                <p>Primary Email</p>
            </div>
            <div class="four" style="display: flex;">
                <p style="white-space: nowrap;">login has done</p>
            </div>
            <div class="button-container" style="margin: 25px 0; border-radius: 2%">
                <a href="AddEmail" style="text-decoration: none;">
                    <button class="btn btn-primary" type="button">Add Email Address</button>
                </a>
            </div>
        </div>
    </body>
</html>

