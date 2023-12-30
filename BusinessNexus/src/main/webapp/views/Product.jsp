<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- 
    Document   : Products
    Created on : Aug 22, 2023, 2:46:20 PM
    Author     : Ranjeet S. Deshmukh
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    </head>
    <body  style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #00008B;">
        <!--navbar-->                                                                        
        <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--end of navbar--> 
        <!--sidebar starts-->
        <div class="container-fluid">
            <div class="row">
                <!--sidebar starts-->
                <div class="col-md-3">
                    <div class="card-text">
                        <div class="list-group" style="padding-left: 15px; margin-top: 4px;">
                            <div class="mt-3">
                                <!-- Categories -->
                                <div style="background-color: white; border-radius: 5px; padding: 6%;">
                                    <h3>Reminders</h3>
                                    <br/>
                                    <a href="AllProducts" onclick="getPosts(0, this)" class="text-black d-block" style="color: black; font-size: 20px;">
                                        <span class="fa fa-handshake-o"style=""></span>  
                                        All Products 
                                    </a>
                                    <br/>
                                    <a href="ThisWeek" onclick="getPosts(0, this)" class="text-black d-block"style="color: black;font-size: 20px"">
                                        <span class="fa fa-calendar"></span>
                                        This Week
                                    </a>
                                    <br/>
                                    <!-- Back Button -->
                                    <button onclick="goToEventsPage()" style="font-size: 16px; position: absolute; top: 30px; right: 10px; transform: translate(-50%, 0); background: none; border: 1px solid black; border-radius: 6px; cursor: pointer;">Back</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--sidebar ends-->


        <!--main content starts-->
        <div class="col-md-8" style="padding-top: 20px">
            <div class="card">
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
                        <button id="product-btn" type="submit" class="btn btn-primary">post</button>
                    </form>
                </div>
            </div>
        </div>
        <!--main content ends-->

        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "Home";
            }
        </script>
    </body>
</html>