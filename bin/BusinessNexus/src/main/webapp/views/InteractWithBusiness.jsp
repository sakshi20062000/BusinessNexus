<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .sidebar-card {
                background-color: transparent;
                border: none;
                box-shadow: none;
            }

            .toggle {
                width: 60px;
                height: 34px;
                position: relative;
                background-color: #ccc;
                border-radius: 34px;
                border: 1px solid #ccc;
            }

            .toggle input {
                display: none;
            }

            .toggle-slider {
                position: absolute;
                cursor: pointer;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: #fff;
                border-radius: 34px;
                transition: .4s;
            }

            .toggle-slider:before {
                position: absolute;
                content: "";
                height: 26px;
                width: 26px;
                left: 4px;
                bottom: 4px;
                background-color: #999;
                border-radius: 50%;
                transition: .4s;
            }

            .toggle input:checked + .toggle-slider {
                background-color: #2196F3;
            }

            .toggle input:checked + .toggle-slider:before {
                transform: translateX(26px);
                background-color: #fff;
            }
        </style>
    </head>
    <body>

        <div class="container" style="border: 1px solid black; width: 60%; margin: 50px 0 0 200px;padding-left: 40px">
            <a href="Advertising" style="text-decoration: none;">
                <div class="one" style="display: flex; margin: 25px 0 0 0; cursor: pointer;">
                    <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
                    <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
                </div>
            </a>
            <div class="two" style="margin: 25px 0 0 0;">
                <h4 style="font-size: 17px;">Interaction With Businesses</h4>
                <p>Can we use your information that you've given to businesses to show you more relevant ads, such as job ads?</p>
            </div>
            <div class="three" style="display: flex;">
                <p style="white-space: nowrap;">Use data you've given to businesses</p>
                <div style="display: flex; justify-content: space-between; margin-left: 280px;">
                    <p><span id="adsStatus1" style="margin: 0 20px 0 0;">Off</span></p>
                    <label class="toggle">
                        <input type="checkbox" onchange="toggleAds(this, 'adsStatus1')">
                        <span class="toggle-slider"></span>
                    </label>
                </div>
            </div>
             
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
