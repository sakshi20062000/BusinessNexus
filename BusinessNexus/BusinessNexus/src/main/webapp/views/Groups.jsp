<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">

        <!--navbar starts-->
        <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--navbar ends-->


        <div class="col-md-3" style="margin-left: 510px ; padding-top: 100px; padding-left: 140px">
            <div class="card mt-2">
                <div class="card-footer">
                    <h5>We are coming soon</h5>
                    <!--Back Button -->
                    <button onclick="goToEventsPage()" style="font-size: 16px; position: absolute; top: 70px; right: 66px; transform: translate(-50%, 0); background: white; border: 1px solid black; border-radius: 6px; cursor: pointer;">Back</button>

                </div>
            </div>
        </div>


        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "Home";
            }
        </script>
    </body>
</html>
