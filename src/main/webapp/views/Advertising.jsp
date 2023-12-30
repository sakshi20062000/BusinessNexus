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

    <!-- Add responsive CSS here -->
    <style>
        @media (max-width: 768px) {
            .container {
                padding-left: 10px;
                padding-right: 10px;
            }

            .sidebar {
                margin: 10px 0;
                padding: 10px;
                border: 2px solid black;
            }

            .nav-link {
                font-size: 18px;
            }

            .fa-long-arrow-right {
                padding-left: 10px;
            }
        }
    </style>
</head>
<body>
   
    <div class="container">
        <div class="row justify-content-center">
            <div class="sidebar" style="margin: 50px 0 0 0;padding: 40px;border: 2px solid black">
                <ul class="nav flex-column"> 
                    <li class="nav-item">
                        <a class="nav-link list-group-item-action active" href="#" style="font-size: 30px; padding-left: 40px;"><strong>Collected Data</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action active" href="Connections" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;">Connections<i class="fa fa-long-arrow-right" style="padding-left: 10px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action active" href="Locations" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;">Location<i class="fa fa-long-arrow-right" style="padding-left: 10px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="Demographics" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;">Demographics<i class="fa fa-long-arrow-right" style="padding-left: 10px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="Communities" onclick="getPosts(2, '')" style="font-size: 20px; padding-left: 40px;">Communities<i class="fa fa-long-arrow-right" style="padding-left: 10px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="BusinessInformation" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;">Business Information<i class="fa fa-long-arrow-right" style="padding-left: 10px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="InteractWithBusiness" onclick="getPosts(2, '')" style="font-size: 20px; padding-left: 40px;">Interaction With Businesses<i class="fa fa-long-arrow-right" style="padding-left: 10px;" aria-hidden="true"></i></a>
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
