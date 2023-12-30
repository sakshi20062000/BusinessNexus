<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Business Nexus</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <div class="container-fluid" style="border: 1px solid black; padding-left: 40px">
        <div class="row">
            <div class="col-md-12">
                <a href="AccountPreferance" style="text-decoration: none;">
                    <div class="d-flex align-items-center">
                        <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
                        <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h4 style="font-size: 17px;">Dark Mode</h4>
                <p>Choose how your Investor Lobby experience looks for this device</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p style="white-space: nowrap;">Dark Mode</p>
            </div>
            <div class="col-md-6 text-right">
                <p><span id="adsStatus1" style="margin: 0 20px 0 0;">Off</span></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label class="toggle">
                    <input type="checkbox" onchange="toggleAds(this, 'adsStatus1')">
                    <span class="toggle-slider"></span>
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p style="white-space: nowrap;">Light Mode</p>
            </div>
            <div class="col-md-6 text-right">
                <p><span id="adsStatus2" style="margin: 0 20px 0 0;">Off</span></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label class="toggle">
                    <input type="checkbox" onchange="toggleAds(this, 'adsStatus2')">
                    <span class="toggle-slider"></span>
                </label>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYlT" crossorigin="anonymous"></script>

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
