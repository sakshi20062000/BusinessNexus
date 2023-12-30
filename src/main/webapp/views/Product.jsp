<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to left, #FFFFFF, #99b3ff);
            color: #00008B;
        }

        .card-header {
            background-color: #343a40;
            color: #fff;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<header>
    <%@include file="Navbar.jsp" %>
</header>
<!-- End of Navbar -->

<!-- Main content starts -->
<div class="container mt-3">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-header bg-secondary text-white text-center">
                    <h3 style="font-family: 'Arial'; font-size: 30px">Product</h3>
                </div>
                <div class="card-body">
                    <form id="productForm" action="ProductServlet" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="productId" id="productId" value="">
                        <div class="form-group">
                            <label for="productName">Product Name:</label>
                            <input class="form-control" type="text" name="productName" id="productName">
                        </div>
                        <div class="form-group">
                            <label for="productDescription">Product Description:</label>
                            <textarea class="form-control" name="productDescription" id="productDescription" rows="5" cols="50"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="productImage">Product Image:</label>
                            <input class="form-control-file" type="file" name="productImage" id="productImage" accept="image/*">
                        </div>
                        <div class="d-flex justify-content-center mt-3"> <!-- Center the button -->
                            <button id="product-btn" type="submit" class="btn btn-primary">Post</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main content ends -->

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
