<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@page import="com.ashuadi.entities.User"%>
<%

    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
 --%>

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>      
         <!--css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">        
    </head>
    <body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
         <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--end of navbar-->
        <main>
            <div class="container text-center">
                <div class="row mt-3">
                    <!--first col-->
                    <div class="col-md-8">
                        <!--categories-->
                        <div class="card mt-2">
                            <div class="card-header">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="post-user-info">
                                        <a href="#!"></a>
                                    </div>
                                    <div class="post-date" style="color: gainsboro; font-size: 13px; text-align: right"></div>
                                </div>
                                <div class="text-center mt-3">
                                   <%--  <img src="pics/<%= user.getProfile()%>" class="rounded-circle img-fluid" style="width: 100px; height: 100px;" data-toggle="modal" data-target="#profile-modal"> --%>
                                </div>
                            </div>
                            <div class="card-body">
                                <p class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal">
                               <%--  <h4><%= user.getName()%></h4>  --%>
                                </p>
                                <p class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal" style="margin-top: -20px;">
                              <%--   <h6><%= user.getCategory()%></h6>  --%>
                                </p>
                                <p  class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal" style="margin-top: -32px;">
                                <h6>Location current</h6>
                                <p style="margin-top: -36px; padding-left: 220px;">
                                    <a class="nav-link   text-black" data-toggle="modal" data-target="#contact-modal" href="#!"> Contact Info </a>
                                </p>
                                <p class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal" style="margin-top: -44px;">
                                <h6>Connections</h6> 
                                </p>                               
                            </div>
                        </div>
                        <div class="list-group">
                            <!--categories-->
                        </div>
                    </div>

                    <!--second col-->
                    <div class="col-md-4">
                        <!--posts-->
                        <a href="#" onclick="getPosts(0, this)" class="c-link list-group-item list-group-item-action active">
                            All Posts
                        </a>
                        <div class="container-fluid" id="post-container"></div>
                    </div>
                </div>
            </div>
        </main>

       

        <!-- Modal -->
        <div class="modal fade" id="contact-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Contact Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ContactServlet" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="formGroupExampleInput">Mobile No:</label>
                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter your contact no">
                            </div>
                            <div class="form-row">
                                <div class="col-7">
                                    <label>Country</label>
                                    <input type="text" class="form-control" placeholder="Type your country name">
                                </div>
                                <div class="col">
                                    <label>City</label>
                                    <input type="text" class="form-control" placeholder="Mention your city">
                                </div>
                                
                                <div class="form-group" style="margin-top: 10px;">
                                    <label for="exampleFormControlFile1">Select your profile pic!</label>
                                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>                     
        <!--end modal-->
        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.js"></script>


    </body>
</html>
