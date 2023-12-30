<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<header>
            <%@include file="HomeNavbar.jsp" %>
        </header>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

        </head>
</body >

 <div class="card mt-2" style="margin-left: 20px; width: 96%">
                            <div class="card-header">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="post-user-info">
                                        <a href="#!"></a>
                                    </div>
                                    <div class="post-date" style="color: gainsboro; font-size: 13px; text-align: right"></div>
                                </div>
                                <div class="text-center mt-3">
                                    <img src="pics/<%-- <%= user.getProfile()%> --%>" class="rounded-circle img-fluid text-center" style="width: 100px; height: 100px;" data-toggle="modal" data-target="#profile-modal">
                                </div>
                            </div>

                            <div class="card-body">
                                <p class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal">
                                    <a class="text-black text-center " style="font-size: 20px; font-weight: bold;" >	</a> 
                                </p>
                                <p class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal" style="margin-top: -34px;">
                               <%--  <h6><%= user.getCategory()%></h6>  --%>
                                </p>


                                <p class="nav-link text-black" href="#!" data-toggle="modal" data-target="#profile-modal" style="margin-top: -44px;">
                                <h6>Connections</h6> 
                                </p>

                                </p>
                            </div>
                        </div>
                        <!--first sidebar ends-->
                        <br/>
                        <!--secound sidebar starts-->
                        <div class="list-group" style="margin-left: 20px;">
                            <div class="d-flex justify-content-start">
                                <div class="d-flex justify-content-center m-auto w-100"> <!-- Increased width -->
                                    <div class="p-0" style="position: unset;">
                                        <div class="row mt-8" style="border-radius: 10px; width: 166%;"> 
                                           

                                            <div class="col-md-8">
                                                <!-- categories -->
                                                 <a style="display: flex; align-items: center; justify-content: center; font-size: 22px; background-color: white; border: 1px solid black; border-radius: 4px;width: 330px">
                                                <strong>Manage my network</strong>
                                            </a>
                                                <br/>
                                                <div class="list-group bg-white rounded px-3 align-items-start" style="height: auto;border: 1px solid black">

                                                    <a href="Connections" onclick="getPosts(0, this)" class="text-black text-center d-block font-size-20 border-bottom border-black py-2" style="color: black">
                                                        <span class="fa fa-handshake-o"></span>
                                                        Connection
                                                    </a>
                                                    <a href="Groups" onclick="getPosts(0, this)" class="text-black text-center d-block font-size-20 border-bottom border-black py-2" style="color: black">
                                                        <span class="fa fa-group"></span>
                                                        Groups / Community
                                                    </a>
                                                    <a href="Events" onclick="getPosts(0, this)" class="text-black text-center d-block font-size-20 border-bottom border-black py-2" style="color: black">
                                                        <span class="fa fa-calendar"></span>
                                                        Events
                                                    </a>
                                                    <a href="Products" onclick="getPosts(0, this)" class="text-black text-center d-block font-size-20 border-bottom border-black py-2" style="color: black">
                                                        <span class="fa fa-clone"></span>
                                                        Products
                                                    </a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--second sidebar ends-->
                    </div>

<body>
 
</html>