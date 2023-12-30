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
        .container {
            border: 1px solid black;
            width: 80%; /* Adjust container width for smaller screens */
            margin: 50px auto; /* Center the container */
            padding-left: 20px; /* Adjust left padding for smaller screens */
            padding-right: 20px; /* Adjust right padding for smaller screens */
            padding-bottom: 20px;
        }

        .one {
            display: flex;
            margin: 25px 0 0 0;
            cursor: pointer;
        }

        .one h5 {
            font-size: 15px;
            margin-left: 15px;
        }

        .two h4 {
            font-size: 17px;
        }

        .three p {
            font-size: 14px;
        }

        .four p {
            white-space: nowrap;
        }

        .button-container {
            margin: 25px 0;
            border-radius: 2%;
        }

        .button-container button {
            width: 100%;
        }

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .container {
                width: 90%; /* Further reduce container width for smaller screens */
            }

            .one h5 {
                font-size: 14px; /* Reduce font size for smaller screens */
            }

            .two h4 {
                font-size: 16px; /* Reduce font size for smaller screens */
            }

            .three p {
                font-size: 13px; /* Reduce font size for smaller screens */
            }

            .button-container {
                margin: 15px 0; /* Reduce margin for smaller screens */
            }

            .button-container button {
                font-size: 14px; /* Reduce font size for smaller screens */
            }
        }
    </style>
</head>
<body>

<div class="container">
    <a href="Sign_Security" style="text-decoration: none;">
        <div class="one">
            <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
            <h5>Back</h5>
        </div>
    </a>
    <div class="two">
        <h4>Email Addresses</h4>
        <p>Email You've added</p>
    </div>
    <div class="three">
        <p>Primary Email</p>
    </div>
    <div class="four">
        <p>login has done</p>
    </div>
    <div class="button-container">
        <a href="AddEmail" style="text-decoration: none;">
            <button class="btn btn-primary" type="button">Add Email Address</button>
        </a>
    </div>
</div>

</body>
</html>
