<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
            .dropdown-link:hover {
                color: blue;
            }

            .fa:hover {
                color: blue;
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
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 80px">

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
                        <li class="nav-item active" style="">
                            <a class="nav-link text-center" href="HomePage">
                                <span class="fa fa-home" style="font-size: 22px;"></span><br>Home
                            </a>
                        </li>
                        <li class="nav-item active" style="">
                            <a class="nav-link text-center" href="ImpConnectionPage">
                                <span class="fa fa-users" style="font-size: 22px;"></span><br>Connections
                            </a>
                        </li>
                       <!--  <li class="nav-item active" style="">
                            <a class="nav-link text-center" href="Message">
                                <span class="fa fa-commenting-o" style="font-size: 22px;"></span><br>Message
                            </a>
                        </li> -->
                        <li class="nav-item active" style="">
                            <a class="nav-link text-center" href="notify1">
                                <span class="fa fa-bell-o" style="font-size: 22px;"></span><br>Notification
                            </a>
                        </li>
                        <li class="nav-item active" style="margin-right: 6px;">
                            <a class="nav-link text-center" href="profile" data-toggle="modal" data-target="#profile-modal">
                                <span class="fa fa-user-circle-o" style="font-size: 22px;"></span><br>Me
                            </a>
                        </li>
                        <li class="nav-item active" style="margin-right: 8px;">
                            <a class="nav-link text-center" href="Logout">
                                <span class="fa fa-sign-out" style="font-size: 22px;"></span><br>Logout
                            </a>
                        </li>
                    </ul>


                    <ul style="list-style-type: none; padding: 0;">
                        <li style="position: relative; display: inline-block;">
                            <a class="nav-link text-center" href="#" style="display: block; text-decoration: none; padding-top: 19px; color: #333;" onclick="toggleDropdown()">
                                <span class="fa fa-reorder" style="font-size: 22px; margin-top: 5px;"></span><br>Premium
                            </a>


                            <div id="dropdown" style="position: absolute; top: 100%; right: 0; display: none; width: 400px; background-color: #fff; border: 1px solid #ccc; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1;">
                                <div class="body" style="width: 100%; padding: 10px; box-sizing: border-box; display: flex; flex-wrap: wrap; justify-content: space-between;">
                                    <div style="width: calc(50% - 20px); margin: 10px; border: 1px solid #ccc; border-radius: 5px; padding: 10px; transition: background-color 0.3s;">
                                        <a href="SB_I_Product.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 20px; color: black; display: block; text-decoration: none;">
                                            <span class="fa fa-product-hunt" style="font-size: 40px;"></span>
                                            <br>Product
                                        </a>
                                    </div>
                                    <div style="width: calc(50% - 20px); margin: 10px; border: 1px solid #ccc; border-radius: 5px; padding: 10px; transition: background-color 0.3s;">
                                        <a href="SB_I_Advertise.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 20px; color: black; display: block; text-decoration: none;">
                                            <span class="fa fa-adn" style="font-size: 45px;"></span>
                                            <br>Advertise
                                        </a>
                                    </div>
                                    <div style="width: calc(50% - 20px); margin: 10px; border: 1px solid #ccc; border-radius: 5px; padding: 10px; transition: background-color 0.3s;">
                                        <a href="SB_I_Groups.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 20px; color: black; display: block; text-decoration: none;">
                                            <span class="fa fa-users" style="font-size: 40px;"></span>
                                            <br>Groups
                                        </a>
                                    </div>
                                    <div style="width: calc(50% - 20px); margin: 10px; border: 1px solid #ccc; border-radius: 5px; padding: 10px; transition: background-color 0.3s;">
                                        <a href="SB_I_Service.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 20px; color: black; display: block; text-decoration: none;">
                                            <span class="fa fa-scribd" style="font-size: 40px;"></span>
                                            <br>Service
                                        </a>
                                    </div>
                                </div>

                                <div class="body" style="width: 100%; padding: 10px;  display: flex; flex-direction: column; align-items: center;">
                                    <a href="#" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 25px; font-weight: normal; text-decoration: none; color: black;">
                                        <strong>Investor Lobby Business Services</strong>
                                    </a>
                                    <br>
                                    <a href="SB_L_Sales_Solution.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 18px; color: black; border: 1px solid #ccc; border-radius: 5px; padding: 5px; margin: 5px; display: block; text-decoration: none;">
                                        <span class="fa fa-sellsy" style="font-size: 30px; transition: color 0.3s;"></span>
                                        <br>Sales Solution
                                    </a>
                                    <a href="SB_L_Admin_Center.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 18px; color: black; border: 1px solid #ccc; border-radius: 5px; padding: 5px; margin: 5px; display: block; text-decoration: none;">
                                        <span class="fa fa-user-secret" style="font-size: 30px; transition: color 0.3s;"></span>
                                        <br>Admin Center
                                    </a>
                                    <a href="SB_L_Create_CompanyPage.jsp" onclick="getPosts(0, this)" class="text-black text-center dropdown-link" style="font-size: 18px; color: black; border: 1px solid #ccc; border-radius: 5px; padding: 5px; margin: 5px; display: block; text-decoration: none;">
                                        <span class="fa fa-file-powerpoint-o" style="font-size: 30px; transition: color 0.3s;"></span>
                                        <br>Create Company Page
                                    </a>
                                </div>
                            </div>


                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!--end of navbar-->

        <!--javascripts-->
        <script>
            function toggleDropdown() {
                var dropdown = document.getElementById('dropdown');
                dropdown.style.display = dropdown.style.display === 'none' ? 'block' : 'none';
            }
        </script>
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