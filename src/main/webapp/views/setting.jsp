<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Your Page Title</title>
    <!-- Add your CSS links here -->
    <link rel="stylesheet" href="your-css-file.css">
    <style>
        /* Add your CSS styles here */
    </style>
</head>

<body>
    <!-- Navbar -->
    <header>
        <%@include file="Navbar.jsp" %>
    </header>

    <div class="col-12 box" style="margin-top: 0px; width:100%">
        <!-- Sidebar -->
        <ul style="list-style-type: none; padding: 0;">
            <li style="position: relative; display: inline-block;">
                <a class="nav-link text-center" href="#" style="display: block; text-decoration: none; font-size: 18px; padding-top: 15px; color: #333;" onclick="toggleDropdown()";>
                    <span class="fa fa-cog" style="font-size: 22px; margin-top: 5px; "></span><br>Setting
                </a>

                <div id="dropdown" style="position: absolute; top: 100%; left: 0; display: none; width: 280px; background-color: #fff; border: 1px solid #ccc; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1;">
                    <div style="width: 260px; height: auto; margin: 8px; margin-bottom: 7px; border: 1px solid #ccc; border-radius: 5px; padding: 5px; transition: background-color 0.3s; font-size: 20px;">
                        <a class="nav-link c-link list-group-item-action bold"
                            href="javascript:void(0);" onclick="getPosts('AccountPreferance')">
                            <span class="fa fa-user-o" aria-hidden="true"></span> Account Preferences
                        </a>
                    </div>
                    <div style="width: 260px; height: auto; margin: 8px; margin-bottom: 7px; border: 1px solid #ccc; border-radius: 5px; padding: 5px; transition: background-color 0.3s; font-size: 20px;">
                        <a class="nav-link c-link list-group-item-action"
                            href="javascript:void(0);" onclick="getPosts('Sign_Security')">
                            <span class="fa fa-lock" aria-hidden="true"></span> Sign in & Security
                        </a>
                    </div>
                    <div style="width: 260px; height: auto; margin: 8px; margin-bottom: 7px; border: 1px solid #ccc; border-radius: 5px; padding: 5px; transition: background-color 0.3s; font-size: 20px;">
                        <a class="nav-link c-link list-group-item-action"
                            href="javascript:void(0);" onclick="getPosts('Notifications')">
                            <span class="fa fa-bell" aria-hidden="true"></span> Notifications 
                        </a>
                    </div>
                    <div style="width: 260px; height: auto; margin: 8px; margin-bottom: 7px; border: 1px solid #ccc; border-radius: 5px; padding: 5px; transition: background-color 0.3s; font-size: 20px;">
                        <a class="nav-link c-link list-group-item-action"
                            href="javascript:void(0);" onclick="getPosts('DataPrivacy')">
                            <span class="fa fa-tint" aria-hidden="true"></span> Data Privacy
                        </a>
                    </div>
                    <div style="width: 260px; height: auto; margin: 8px; margin-bottom: 7px; border: 1px solid #ccc; border-radius: 5px; padding: 5px; transition: background-color 0.3s;font-size: 20px;">
                        <a class="nav-link c-link list-group-item-action"
                            href="javascript:void(0);" onclick="getPosts('Visibility')">
                            <span class="fa fa-eye" aria-hidden="true"></span> Visibility
                        </a>
                    </div>
                    <div style="width: 260px; height: auto; margin: 8px; margin-bottom: 7px; border: 1px solid #ccc; border-radius: 5px; padding: 5px; transition: background-color 0.3s; font-size: 20px;">
                        <a class="nav-link c-link list-group-item-action"
                            href="javascript:void(0);" onclick="getPosts('Advertising')">
                            <span class="fa fa-credit-card" aria-hidden="true"></span> Advertising Data
                        </a>
                    </div>
                </div>
            </li>
        </ul>

        <iframe id="contentFrame1" src="" frameborder="0" style="width:100%; height:900px; padding:0px"></iframe>
    </div>

    <!-- JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script>
        function toggleDropdown() {
            var dropdown = document.getElementById('dropdown');
            dropdown.style.display = dropdown.style.display === 'none' ? 'block' : 'none';
        }

        function getPosts(url) {
            $('#contentFrame1').attr('src', url);
            
        }
    </script>
</body>

</html>