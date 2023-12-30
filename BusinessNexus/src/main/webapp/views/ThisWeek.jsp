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




        <!--        main body starts
                <main>
                    <h1>Latest News</h1>
                    
                    <article>
                        <h2>Breaking News 1</h2>
                        <img src="path_to_image1.jpg" alt="News Image 1" width="300" height="200">
                        <p>This is the content of breaking news 1.</p>
                    </article>
                    
                    <article>
                        <h2>Breaking News 2</h2>
                        <img src="path_to_image2.jpg" alt="News Image 2" width="300" height="200">
                        <p>This is the content of breaking news 2.</p>
                    </article>
                    
                     Add more news articles with images as needed 
                    
                </main>
                main body ends-->


        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "Events";
            }
        </script>
    </body>
</html>
