<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
            margin-top: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Contact Information</h1>
    <form method="post" action="processFormData.jsp">
        <div class="form-group">
            <label for="contactNo">Contact No:</label>
            <input type="text" class="form-control" id="contactNo" name="contactNo" required>
        </div>
        <div class="form-group">
            <label for="email">Email ID:</label>
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
            <label for="address">Address:</label>
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
        <div class="form-group">
            <label for="businessAddress">Business Address:</label>
            <textarea class="form-control" id="businessAddress" name="businessAddress" rows="4"></textarea>
        </div>
        <div class="form-group">
            <label for="businessContactNo">Business Contact Number:</label>
            <input type="text" class="form-control" id="businessContactNo" name="businessContactNo">
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form>
</div>

<!-- Include Bootstrap JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYlT" crossorigin="anonymous"></script>

</body>
</html>
