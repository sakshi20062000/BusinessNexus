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

    <style>
        /* Add responsive CSS here */
        @media (max-width: 768px) {
            .container {
                width: 100%;
            }

            .container > div {
                width: 100%;
                padding-left: 10px;
                padding-right: 10px;
            }

            /* You can add more responsive styles as needed */
        }
    </style>
</head>
<body>
<div class="container" style="border: 1px solid black; margin: 50px auto; max-width: 60%; padding-left: 40px">
    <a href="Email_Address" style="text-decoration: none;">
        <div class="one" style="display: flex; margin: 25px 0 0 0; cursor: pointer;">
            <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
            <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
        </div>
    </a>
    <div class="two" style="margin: 25px 0 0 0;">
        <h4 style="font-size: 17px;">Email Addresses</h4>
        <p style="font-size: 14px">Add New Email</p>
    </div>
    <div class="three" style="margin: 25px 0 0 0;">
        <p>Enter New Email Address</p>
    </div>
    <div class="text-field" style="margin: 25px 0;">
        <label for="email"></label>
        <input type="text" id="email" name="email" placeholder="Enter email address">
    </div>
    <div class="four" style="margin: 25px 0 0 0;">
        <p>Enter Your Business Nexus Password</p>
    </div>
    <div class="text-field" style="margin: 25px 0;">
        <label for="pass"></label>
        <input type="text" id="pass" name="pass" placeholder="Enter email address">
    </div>
    <div class="button-container" style="margin: 25px 0;">
        <button class="btn btn-primary" type="button">Submit</button>
    </div>
</div>
</body>
</html>
