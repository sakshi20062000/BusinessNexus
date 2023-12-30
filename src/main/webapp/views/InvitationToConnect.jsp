<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
        /* Common styles for all screen sizes */
        .container {
            border: 1px solid black;
            width: 60%;
            margin: 50px auto;
            padding-left: 40px;
        }

        .one {
            display: flex;
            margin: 25px 0 0 0;
            cursor: pointer;
        }

        .one .fa-long-arrow-left {
            font-size: 20px;
            margin-right: 10px;
        }

        .two {
            margin: 25px 0 0 0;
        }

        .two h4 {
            font-size: 17px;
        }

        /* Media queries for responsive design */
        @media (max-width: 768px) {
            /* Adjust styles for smaller screens */
            .container {
                width: 100%;
                padding: 20px;
            }

            .one {
                margin: 15px 0 0 0;
            }

            .one .fa-long-arrow-left {
                font-size: 16px;
                margin-right: 8px;
            }

            .two h4 {
                font-size: 16px;
            }
        }

        @media (max-width: 576px) {
            /* Adjust styles for even smaller screens */
            .container {
                padding: 10px;
            }

            .one .fa-long-arrow-left {
                font-size: 14px;
            }

            .two h4 {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="container">
<div class="one">
    <a href="DataPrivacy" style="text-decoration: none;">Back</a>
    
       <!--  <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
        <h5 style="font-size: 15px; margin-left: 15px;"></h5> -->
        
        
    </div>
    <div class="two">
        <h4 style="font-size: 17px;">Invitations to connect</h4>
        <p>Who can send you invitations to connect?</p>
    </div>
</div>

</body>
</html>