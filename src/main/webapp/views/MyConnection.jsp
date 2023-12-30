<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
        <!--navbar starts-->
        <header>
            <%@include file="Navbar.jsp" %>
        </header>        
        <!--navbar ends-->

        <!--sidebar starts--> 
        <%@include file="ConnectionSidebar.jsp" %>
                  
        <!--sidebar ends-->


        <!--main section starts--> 
        <!-- <div style="margin-right: 400px; flex: 1; margin-top: 23px;"> -->


        <%int profileCount=0; %><br><br><br>
      <c:forEach items="${connections}" var="user">
     <a href='AcceptImage?id=${user.receiverId.userId}' style='text-decoration: none;'>
        <div style='display: flex; bor der: 1px solid; background-color: white; width: 600px; border-radius: 5px; margin: 10px auto; position: relative;'>
            <div style='width: 100px; height: 100px; border-radius: 50%; overflow: hidden; border: 1px solid #000;'>
               <img src="/AcceptImage?id=${user.receiverId.userId}" alt="Profile Picture vvv" style="width: 100%; height: 100%; object-fit: cover;">
            </div>
            <div style='margin-left: 10px;'>
                <p style='font-weight: bold;'><a href='profilePage.jsp?id=${user.receiverId.userId}' style='text-decoration: none; color: inherit;'>${user.userId.firstName}</a></p>
                <p>Email: ${user.userId.email}</p>
                
                <%profileCount++; %>
                  <button id="messageButton" style="position: absolute; top: 50%; left: 434px; transform: translateY(-50%);">Message</button>
            </div>
        </div>
        
    </a>
   
</c:forEach>


          
      <!--   </div> -->

        <!-- Updated profile count element -->
        <div style="position: absolute; top: 90px ; right:250px; text-align: right;">
            <p style="display: inline-block; background-color: white; padding: 10px; border-radius: 5px; margin: 10px;"><strong>Total Profiles :</strong>  <%= profileCount%> </p>
        </div>        
        <!--main section ends-->
    

        <!--js scripts-->

        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "Home";
            }
        </script>
        <script>
            document.getElementById("messageButton").addEventListener("click", function () {
                // Execute code when the button is clicked
                window.location.href = "Message"; // Redirect to the message.jsp page
                // You might also want to trigger the message sending process here
            });
        </script>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script></body>
</html>