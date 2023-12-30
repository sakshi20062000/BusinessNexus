<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <div class="container-fluid"  style="padding-top: 20px">
            <div class="row" >
                <!-- Sidebar -->
                <div class="col-md-3" >
                    <a href="#" onclick="getPosts(0, this)" class="list-group-item text-black text-center"style="color: black; border: 1px solid black; border-radius: 4px;">
                        <strong>Manage my network</strong>
                    </a>
                    <br/>
                    <div class="list-group" style="border: 1px #000000 solid">

                        <a href="Connection" onclick="getPosts(0, this)" class="list-group-item text-black text-center" style="color: black;">
                            <span class="fa fa-handshake-o"></span>
                            Connection
                        </a>
                        <a href="Groups" onclick="getPosts(0, this)" class="list-group-item text-black text-center" style="color: black;">
                            <span class="fa fa-group"></span>
                            Groups / Community
                        </a>
                        <a href="Events" onclick="getPosts(0, this)" class="list-group-item text-black text-center" style="color: black;">
                            <span class="fa fa-calendar"></span>
                            Events
                        </a>
                        <a href="MyConnection" onclick="getPosts(0, this)" class="list-group-item text-black text-center" style="color: black;">
                            <span class="fa fa-clone"></span>
                            My Connection
                        </a>

                    </div>
                    <button onclick="goToEventsPage()" class="btn btn-outline-dark btn-block mt-3">Back</button>
                </div>
            </div>
        </div>
        <!--sidebar ends-->


        <!--main section starts--> 
        <div style="margin-left: 10px; flex: 1; margin-top: -330px;">

            <%
                // Define the database connection details and create a connection object
                String url = "jdbc:mysql://localhost:3306/phonix";
                String username = "root";
                String password = "";
                Connection conn = null;
                int profileCount = 0; // Initialize the profile count

                try {
                    // Register the JDBC driver
                    Class.forName("com.mysql.jdbc.Driver");

                    // Create the connection
                    conn = DriverManager.getConnection(url, username, password);

                    // Create a statement object
                    Statement statement = conn.createStatement();
                    

                    // Execute the SQL query
                    String query = "SELECT * FROM accept";
                    ResultSet resultSet = statement.executeQuery(query);

                    // Display the results
                    while (resultSet.next()) {
                        String id = resultSet.getString("id");
                        String name = resultSet.getString("name");
                        String email = resultSet.getString("email");
                        String category = resultSet.getString("category");
                        String profile = resultSet.getString("profile");

                        out.println("<a href='profile.jsp?id=" + id + "' style='text-decoration: none;'>");
                        out.println("<div style='display: flex; border: 1px solid; background-color:white; width:600px; border-radius:5px; margin:10px auto; position: relative;'>");
                        out.println("<div style='flex: 0 0 100px; height: 100px; border-radius: 50%; overflow: hidden;'>");
                        out.println("<img src='" + profile + "' alt='Profile Picture' style='width: 100%; height: 100%; object-fit: cover;'>");
                        out.println("</div>");
                        out.println("<div style='margin-left: 10px;'>");
                        out.println("<p style='font-weight: bold;'><a href='profile.jsp?id=" + id + "' style='text-decoration: none; color: inherit;'>" + name + "</a></p>");
                        out.println("<p>Email: " + email + "</p>");
                        out.println("<p>Category: " + category + "</p>");
                        out.println("</div>");
                        out.println("</div>");
                        out.println("</a>");

                        // Increment the profile count
                        profileCount++;
                    }

                    // Close the statement
                    statement.close();

                    // Display a success message if the connection is established
                    if (conn != null) {
                        //out.println("Database connection successful!");
                    }
                } catch (Exception e) {
                    // Handle any exceptions that occur during the connection process
                    out.println("Error executing SQL query or establishing connection: " + e.getMessage());
                } finally {
                    // Close the connection once you're done
                    if (conn != null) {
                        try {
                            conn.close();
                        } catch (SQLException e) {
                            out.println("Error closing database connection: " + e.getMessage());
                        }
                    }
                }
            %>
        </div>

        <!-- Updated profile count element -->
        <div style="position: absolute; top: 90px ; right:250px; text-align: right;">
            <p style="display: inline-block; background-color: white; padding: 10px; border-radius: 5px; margin: 10px;"><strong>Total Profiles :</strong> <%= profileCount%></p>
        </div>        
        <!--main section ends-->
        <button id="messageButton" style="position: absolute; top: 23%; right: 500px; transform: translateY(-50%);">Message</button>



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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>

