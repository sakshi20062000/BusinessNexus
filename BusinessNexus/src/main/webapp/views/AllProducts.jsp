<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
        <!--starts of navbar--> 
        <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--end of navbar-->

        <!--sidebar starts-->

        <main  style="display: flex; justify-content:space-between;" class="">
            <div class="list-group">
                <div style="size: portrait;display: flex; justify-content:space-between;">
                    <div style="padding-top:2%;  position: unset;">
                        <div class="row mt-8" style="padding-left: 1%; width: 100%;">
                            <!-- first col-->
                            <div class="col-md-9">
                                <!-- categories -->
                                <div class="list-group"
                                     style="background-color: white;width: 350px; padding-right: 80%; border-radius: 5px;  align-items: flex-start;height: auto; padding: 6%; padding-top: 10px; margin-left:20px ">

                                    <a href="#" onclick="getPosts(0, this)"
                                       class="text-black text-center"
                                       style="font-size: 25px; font-weight: normal; text-decoration: none; color: black ;">
                                        <strong>Manage my network</strong>
                                    </a>
                                    <br />

                                    <a href="Connection" onclick="getPosts(0, this)"
                                       class="text-black text-center"
                                       style="font-size: 20px; color: black ;">
                                        <span class="fa fa-handshake-o"></span>
                                        Connection
                                    </a>
                                    <br />
                                    <a href="Groups" onclick="getPosts(0, this)"
                                       class="text-black text-center"
                                       style="font-size: 20px;color: black ;">
                                        <span class="fa fa-group"></span>
                                        Groups / Community
                                    </a>
                                    <br />
                                    <a href="Events" onclick="getPosts(0, this)"
                                       class="text-black text-center"
                                       style="font-size: 20px; color: black ;">
                                        <span class="fa fa-calendar"></span>
                                        Events
                                    </a>
                                    <br />
                                    <a href="Myconnection.jsp" onclick="getPosts(0, this)"
                                       class="text-black text-center"
                                       style="font-size: 20px; color: black ;">
                                        <span class="fa fa-clone"></span>
                                        My Connection
                                    </a>
                                    <br />
                                    <!-- Back Button -->
                                    <button onclick="goToEventsPage()" style="font-size: 16px; position: absolute; top: 14px; right: -120px; transform: translate(-50%, 0); background: none; border: 1px solid black; border-radius: 6px; cursor: pointer;">Back</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </div>
            <!--sidbar ends-->

            <!-- Main section starts -->
            <div class="col-md-10">
                <div class="list-group" style="padding-top: 20px; margin-left: 200px; margin-top: -290px">
                    <div class="container">
                        <!-- Center the row -->
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                               <%--  <%
                                    try {
                                        // Create an instance of ProductDAO using the ConnectionProvider
                                        ProductDao productDao = new ProductDao(ConnectionProvider.getConnection());

                                        // Retrieve all products from the database
                                        List<Product> productList = productDao.getAllProducts();

                                        // Iterate over the productList and display the details
                                        for (Product product : productList) {
                                %> --%>
                               <%--  <div class="card mb-4">
                                    <div class="card-body">
                                        <h5 class="card-title">Product Name: <%= product.getName()%></h5>
                                        <p class="card-text">Description: <%= product.getDescription()%></p>
                                    </div>
                                    <img src="<%= product.getImageUrl()%>" class="card-img-top" alt="Product Image">
                                </div>
                                <%
                                      /*   }
                                    } ca --%>tch (Exception e) {
                                        out.println("An error occurred: " + e.getMessage());
                                        e.printStackTrace();
                                    } */
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Main section ends -->
        </main>

        <!--footer starts-->
        <footer>
           <%--  <%@include file="footer.jsp" %> --%>
        </footer>
        <!--footer ends-->
        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "Home";
            }
        </script>

    </body>
</html>
