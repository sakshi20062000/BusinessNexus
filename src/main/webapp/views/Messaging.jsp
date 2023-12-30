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
            margin: 50px auto 0;
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

        .three {
            margin: 25px 0 0 0;
        }

        .three p {
            font-size: 16px;
        }

        .four {
            display: flex;
            margin: 25px 0 0 0;
        }

        .four p {
            white-space: nowrap;
            font-size: 16px;
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

            .three p {
                font-size: 15px;
            }

            .four p {
                font-size: 15px;
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

            .three p {
                font-size: 13px;
            }

            .four p {
                font-size: 13px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <a href="Notifications" style="text-decoration: none;">
        <div class="one" style="display: flex; margin: 25px 0 0 0; cursor: pointer;">
            <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
            <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
        </div>
    </a>
    <div class="two" style="margin: 25px 0 0 0;">
        <h4 style="font-size: 17px;">Messages</h4>
        <p style="font-size: 14px">These are notifications letting you know you've received messages</p>
    </div>
    <div class="three" style="margin: 25px 0 0 0;">
        <p>Allow Messaging Notifications</p>
    </div>
    <div class="four" style="display: flex;">
        <p style="white-space: nowrap;">Push, In-app, Email</p>
        <div style="display: flex; justify-content: space-between; margin-left: 280px;">
            <p><span id="adsStatus1" style="margin: 0 20px 0 0;">Off</span></p>
            <label class="toggle">
                <input type="checkbox" onchange="toggleAds(this, 'adsStatus1')">
                <span class="toggle-slider"></span>
            </label>
        </div>
    </div>
</div>

<!-- JavaScript -->
<script>
    function toggleAds(checkbox, statusElementId) {
        var statusElement = document.getElementById(statusElementId);

        if (checkbox.checked) {
            console.log("Ads enabled");
            statusElement.textContent = "On";
            // Perform action when ads are enabled
        } else {
            console.log("Ads disabled");
            statusElement.textContent = "Off";
            // Perform action when ads are disabled
        }
    }
</script>
</body>
</html>