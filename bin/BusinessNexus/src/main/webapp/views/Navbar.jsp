<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .vertical-line {
                margin: 0.5rem 0;
                border: none;
                border-left: 2px solid ;
                height: 3rem;
            }

        </style>
        
        <style>
    /* ... Your existing styles ... */

    .navbar-brand:hover,
    .nav-link:hover {
        color: blue !important;
    }

    .fa:hover {
        color: blue !important;
    }
</style>


    </head>
    <body>
        <!--navbar-->
        
       <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        
        <a class="navbar-brand" href="Home">
    <img src="logo/logo.png" alt="Logo" style="max-height: 28px; vertical-align: -2px; margin-right: 6px;">
    <span style="font-size: 26px; font-family: 'racesport'">Business Nexus</span>
</a>



        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link text-center" href="Home">
                        <span class="fa fa-home" style="font-size: 22px;"></span><br>Home
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-center" href="Connections">
                        <span class="fa fa-users" style="font-size: 22px;"></span><br>Connections
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-center" href="Message">
                        <span class="fa fa-commenting-o" style="font-size: 22px;"></span><br>Message
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link disabled text-center" href="notify1">
                        <span class="fa fa-bell-o" style="font-size: 22px;"></span><br>Notification
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-center" href="#!" data-toggle="modal" data-target="#profile-modal">
                        <span class="fa fa-user-circle-o" style="font-size: 22px;"></span><br>Me
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-center" href="login">
                        <span class="fa fa-sign-out" style="font-size: 22px;"></span><br>Logout
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</header>





        <!--end of navbar-->

        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.js"></script>

    </body>
</html>