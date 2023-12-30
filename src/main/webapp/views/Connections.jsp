<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Business Nexus</title>

    <!-- Add Bootstrap CSS and responsive styles -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        /* Responsive styles for container */
        .container {
            max-width: 100%;
            margin: 50px auto;
            padding: 0 15px;
        }

        /* Responsive styles for Back button */
        .back-button {
            display: inline-flex;
            align-items: center;
            text-decoration: none;
            color: #000;
        }

        .back-button .fa-long-arrow-left {
            margin-right: 10px;
        }

        /* Responsive styles for Connections section */
        .connections-section {
            margin: 25px 0;
        }

        /* Responsive styles for Toggle switch */
        .toggle-switch {
            display: flex;
            justify-content: space-between;
            margin-left: auto;
        }

        .toggle-switch label {
            margin: 0 20px 0 0;
        }
    </style>
</head>
<body>

<div class="container">
    <a href="Advertising" class="back-button">
        <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
        <h5 style="font-size: 15px;">Back</h5>
    </a>
    <div class="connections-section">
        <h4 style="font-size: 17px;">Connections</h4>
        <p>Can we use information from your 1st-degree connections to show you more relevant ads, such as job ads?</p>
    </div>
    <div class="toggle-switch">
        <p>Use connections data</p>
        <label class="toggle">
            <input type="checkbox" onchange="toggleAds(this, 'adsStatus1')">
            <span class="toggle-slider"></span>
        </label>
        <p><span id="adsStatus1">Off</span></p>
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