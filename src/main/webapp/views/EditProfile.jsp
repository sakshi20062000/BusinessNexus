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

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .container {
                width: 90%; /* Further reduce container width for smaller screens */
                margin-left: 10px; /* Adjust left margin for smaller screens */
            }

            .one h5 {
                font-size: 14px; /* Reduce font size for smaller screens */
            }
        }
    </style>
</head>
<body>

<div class="container">
    <a href="Visibility" style="text-decoration: none;">
        <div class="one">
            <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
            <h5>Back</h5>
        </div>
    </a>
    <div class="two">
        <h4>Edit Your Profile</h4>
    </div>
</div>

</body>
</html>
