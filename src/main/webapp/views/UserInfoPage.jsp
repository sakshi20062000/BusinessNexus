<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Business Nexus</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            margin: 20px auto;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }

        h1 {
            color: #333;
        }

        label {
            font-weight: bold;
            width: 100%;
            display: inline-block;
        }

        .form-control {
            width: 100%;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            width: 100%;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            /* Adjust styles for smaller screens if needed */
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Contact Information</h1>
    <form method="post" action="insertUserInfo" onsubmit="return validateForm();">
        <div class="form-group">
            <label for="contactNo">Personal Contact No:</label>
            <input type="text" class="form-control" id="contactNo" name="contactNo" required>
        </div>
        <div class="form-group">
            <label for="email">Personal Email ID:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="gender">Gender:</label>
            <select class="form-control" id="gender" name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label for="address">Personal Address:</label>
            <textarea class="form-control" id="address" name="address" rows="4" required></textarea>
        </div>
        <div class="form-group">
            <label for="aadharNo">Aadhar No:</label>
            <input type="text" class="form-control" id="aadharNo" name="aadharNo" required>
        </div>
        <div class="form-group">
            <label for="panNo">PAN No:</label>
            <input type="text" class="form-control" id="panNo" name="panNo" required>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="businessName">Business Name:</label>
                    <input type="text" class="form-control" id="businessName" name="businessName" required>
                </div>
                <div class="form-group">
                    <label for="businessType">Business Type:</label>
                    <select class="form-control" id="businessType" name="businessType">
                        <option value="Retail">Retail</option>
                        <option value="Wholesale">Wholesale</option>
                        <option value="Service">Service</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="gstNo">GST No:</label>
                    <input type="text" class="form-control" id="gstNo" name="gstNo">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="businessAddress">Business Address:</label>
                    <textarea class="form-control" id="businessAddress" name="businessAddress" rows="4"></textarea>
                </div>
                <div class="form-group">
                    <label for="businessContactNo">Business Contact Number:</label>
                    <input type="text" class="form-control" id="businessContactNo" name=" ">
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form>
</div>

<!-- Include Bootstrap JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYlT" crossorigin="anonymous"></script>

<script>
    // Function to validate GST Number
    function validateGST() {
        var gstNo = document.getElementById("gstNo").value;
        var gstRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}[Z]{1}[0-9A-Z]{1}$/;
        if (!gstRegex.test(gstNo)) {
            alert("Please enter a valid GST Number.");
            return false;
        }
        return true;
    }

    // Function to validate PAN Card Number
    function validatePAN() {
        var panNo = document.getElementById("panNo").value;
        var panRegex = /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;
        if (!panRegex.test(panNo)) {
            alert("Please enter a valid PAN Card Number.");
            return false;
        }
        return true;
    }

    // Function to validate Aadhar Card Number
    function validateAadhar() {
        var aadharNo = document.getElementById("aadharNo").value;
        var aadharRegex = /^\d{12}$/;
        if (!aadharRegex.test(aadharNo)) {
            alert("Please enter a valid Aadhar Card Number.");
            return false;
        }
        return true;
    }

    // Validate the form on submission
    function validateForm() {
        if (validateGST() && validatePAN() && validateAadhar()) {
            return true; // Submit the form
        } else {
            return false; // Prevent form submission
        }
    }
</script>

</body>
</html>

<script>
    // Function to validate GST Number
    function validateGST() {
        var gstNo = document.getElementById("gstNo").value;
        var gstRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}[Z]{1}[0-9A-Z]{1}$/;
        if (!gstRegex.test(gstNo)) {
            alert("Please enter a valid GST Number.");
            return false;
        }
        return true;
    }

    // Function to validate PAN Card Number
    function validatePAN() {
        var panNo = document.getElementById("panNo").value;
        var panRegex = /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;
        if (!panRegex.test(panNo)) {
            alert("Please enter a valid PAN Card Number.");
            return false;
        }
        return true;
    }

    // Function to validate Aadhar Card Number
    function validateAadhar() {
        var aadharNo = document.getElementById("aadharNo").value;
        var aadharRegex = /^\d{12}$/;
        if (!aadharRegex.test(aadharNo)) {
            alert("Please enter a valid Aadhar Card Number.");
            return false;
        }
        return true;
    }

    // Validate the form on submission
    function validateForm() {
        if (validateGST() && validatePAN() && validateAadhar()) {
            return true; // Submit the form
        } else {
            return false; // Prevent form submission
        }
    }
</script>


<!-- Include Bootstrap JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYlT" crossorigin="anonymous"></script>

</body>
</html>