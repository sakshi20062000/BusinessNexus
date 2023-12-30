<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Business Nexus</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>
    <style>
        body {
            background: linear-gradient(to left, #FFFFFF, #99b3ff);
            color: #000000;
            overflow-x: hidden;
            margin: 0;
            padding: 0;
        }

        .mcd-menu {
            list-style: none;
            padding: 0;
            margin: 0;
            background: #FFF;
            width: 280px;
            border-radius: 2px; /* Added border-radius */
            float: left; /* Move menu to the left */
            margin-top: 4%; /* Add top margin */
            margin-left: 2%; /* Add left padding */
        }

        .mcd-menu li {
            position: relative;
        }

        .mcd-menu li a {
            display: block;
            text-decoration: none;
            padding: 12px 20px;
            color: #000000;
            text-align: left;
            height: 36px;
            position: relative;
            border-bottom: 1px solid #EEE;
        }

        .mcd-menu li a i {
            float: left;
            font-size: 20px;
            margin: 0 10px 0 0;
        }

        .mcd-menu li a strong {
            display: block;
            text-transform: uppercase;
        }

        .mcd-menu li a small {
            display: block;
            font-size: 10px;
        }

        .mcd-menu li a i, .mcd-menu li a strong, .mcd-menu li a small {
            position: relative;
            transition: all 300ms linear;
        }

        .mcd-menu li:hover > a i {
            opacity: 1;
        }

        .mcd-menu li:hover a strong {
            opacity: 1;
        }

        .mcd-menu li:hover a small {
            opacity: 1;
        }

        .mcd-menu li:hover > a {
            color: #3872EE;
        }

        .mcd-menu li a.active {
            position: relative;
            color: #3872EE;
            border-left: 4px solid #3872EE;
            border-right: 4px solid #3872EE;
            margin: 0 -4px;
        }

        .mcd-menu li a.active:before {
            content: "";
            position: absolute;
            top: 42%;
            left: 0;
            border-left: 5px solid #3872EE;
            border-top: 5px solid transparent;
            border-bottom: 5px solid transparent;
        }

        @media only screen and (max-width: 767px) {
            .mcd-menu {
                width: 50px;
            }

            .mcd-menu li a {
                position: relative;
                padding: 12px 16px;
                height: 20px;
            }

            .mcd-menu li a small {
                display: none;
            }

            .mcd-menu li a strong {
                display: none;
            }

            .mcd-menu li a:hover strong, .mcd-menu li a.active strong {
                display: block;
                font-size: 10px;
                padding: 3px 0;
                position: absolute;
                bottom: 0px;
                left: 0;
                background: #3872EE;
                color: #FFF;
                min-width: 100%;
                text-transform: lowercase;
                font-weight: normal;
                text-align: center;
            }
        }
    </style>
</head>
<body>

<nav>
    <ul class="mcd-menu">
        <li>
            <a href="" class="active" style="font-size: 20px;">
                <strong>Manage My Network</strong>
                <small></small>
            </a>
        </li>
       <br/>
           <li>
            <a href="FindPeoples" >
                <i class="fa fa-user-plus"></i>
                <strong>Find People</strong>
                <small></small>
            </a>
        </li>
        <br>
       
       
     <li>
            <a href="Events1" >
                <i class="fa fa-edit"></i>
                <strong>Events</strong>
                <small></small>
            </a>
        </li>
       <br/> 
        <li>
            <a href="Groups1">
                <i class="fa fa-comments-o"></i>
                <strong>Groups/Community</strong>
                <small></small>
            </a>
        </li>
        <br>
        <li>
            <a href="MyConnectionPage">
                <i class="fa fa-clone"></i>
                <strong>MyConnection</strong>
                <small></small>
            </a>
        </li>
    </ul>
</nav>

</body>
</html>