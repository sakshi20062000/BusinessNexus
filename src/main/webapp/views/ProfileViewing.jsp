<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Business Nexus</title>

    <!-- Include Bootstrap CSS -->
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

<div class="container-fluid" style="padding-left: 40px">
    <a href="Visibility" style="text-decoration: none;">
        <div class="d-flex align-items-center mt-5">
            <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
            <h5 class="font-size-15 ml-2">Back</h5>
        </div>
       
        
    </a>
    <div class="mt-5">
        <h4 class="font-size-17">Profile Viewing</h4>
        <p>Select what others see when you've viewed their profile</p>
        <p>Profile cha code takane ahe</p>
    </div>
    <div class="d-flex mt-3">
        <p>Private Mode</p>
        <div class="ml-auto d-flex align-items-center">
            <p><span id="adsStatus1" class="mr-2">Off</span></p>
            <label class="toggle">
                <input type="checkbox" onchange="toggleAds(this, 'adsStatus1')">
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
