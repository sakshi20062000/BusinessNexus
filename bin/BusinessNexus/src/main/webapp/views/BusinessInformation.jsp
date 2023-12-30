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
        <h4 style="font-size: 17px;">Business Information</h4>
        <p style="font-size: 14px">What business information can we use to show you more relevant ads, such as business ads?</p>
    </div>

    <div style="display: flex; align-items: center; margin-bottom: 10px;">
        <label class="toggle">
            <input type="checkbox" onchange="toggleBusinessAds(this)">
            <span class="toggle-custom-checkbox"></span>
        </label>
        <label style="margin-right: 10px; margin-left: 15px" for="connectionsRadio">Current Business Information</label>
    </div>
</div>

<!-- JavaScript -->
<script>
    function toggleBusinessAds(checkbox) {
        if (checkbox.checked) {
            console.log("Business ads enabled");
            // Perform action when business ads are enabled
        } else {
            console.log("Business ads disabled");
            // Perform action when business ads are disabled
        }
    }
</script>
</body>
</html>
