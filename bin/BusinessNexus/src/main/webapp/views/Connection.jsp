<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
    <!--navbar--> 
    <header>
        <%@include file="HomeNavbar.jsp" %>
    </header>
    <!--end of navbar-->

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
                    <a href="Myconnection.jsp" onclick="getPosts(0, this)" class="list-group-item text-black text-center" style="color: black;">
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
    <div class="container mt-5">
    <div style="margin-left: 10px; flex: 1; margin-top: -380px ;">

        <%
            // Define the database connection details and create a connection object
            String url = "jdbc:mysql://localhost:3306/phonix";
            String username = "root";
            String password = "";
            Connection conn = null;
            int profileCount = 0;

            try {
                // Register the JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Create the connection
                conn = DriverManager.getConnection(url, username, password);

                // Create a statement object
                Statement statement = conn.createStatement();

                // Execute the SQL query
                String query = "SELECT * FROM user";
                ResultSet resultSet = statement.executeQuery(query);

                // Display the results
                while (resultSet.next()) {
                    String id = resultSet.getString("id");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    String category = resultSet.getString("category");
                    String profile = resultSet.getString("profile");

                    profileCount++; // Increment the profile count

                    out.println("<a href='profile.jsp?id=" + id + "' style='text-decoration: none;'>");
                    out.println("<div style='display: flex; border: 1px solid; background-color:white; width:600px; border-radius:5px; margin:10px auto;'>");
                    out.println("<div style='flex: 0 0 100px; height: 100px; border-radius: 50%; overflow: hidden;'>");
                    out.println("<img src='" + profile + "' alt='Profile Picture' style='width: 100%; height: 100%; object-fit: cover;'>");
                    out.println("</div>");
                    out.println("<div style='margin-left: 10px; flex-grow: 1;'>");
                    out.println("<p style='font-weight: bold;'><a href='profile.jsp?id=" + id + "' style='text-decoration: none; color: inherit;'>" + name + "</a></p>");
                    out.println("<p>Email: " + email + "</p>");
                    out.println("<p>Category: " + category + "</p>");

                    // Buttons for accept and ignore
                    out.println("<div style='display: flex; align-items: flex-start; justify-content: flex-end; top: 5px; right: 5px;'>");
                    out.println("<form action='acceptProfile.jsp' method='post'>");
                    out.println("<input type='hidden' name='profileId' value='" + id + "'>");
                    out.println("<button style='border-radius:4px; width:70px; margin-right: 10px; background: lightblue; border: 1px solid black; cursor: pointer; transition: background 0.3s;' type='submit' onmouseover=\"this.style.background='darkgreen'\" onmouseout=\"this.style.background='lightgreen'\">Accept</button>");
                    out.println("</form>");

                    out.println("<form action='removeProfile.jsp' method='post'>");
                    out.println("  <input type='hidden' name='profileId' value='" + id + "'>");
                    out.println("<button style='border-radius:4px; width:70px;margin-right: 10px; background: lightred; border:1px solid black; cursor:pointer; transition: background 0.3s;' type='submit' onmouseover=\"this.style.background='darkred'\" onmouseout=\"this.style.background='lightcoral'\">Ignore</button>");
                    out.println("</form>");

                    out.println("</div>");

                    out.println("</div>");
                    out.println("</div>");
                    out.println("</a>");

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

    </div>
    <!-- Updated profile count element -->
    <div style="position: absolute; top: 90px ; right:250px; text-align: right;">
        <p style="display: inline-block; background-color: white; padding: 10px; border-radius: 5px; margin: 10px; border: 1px solid black;"><strong>Total Profiles :</strong> <%= profileCount%></p>
    </div>  

    <!--main section ends-->

    <!--footers-->
   <%--  <footer>
        <%@include file="footer.jsp" %>
    </footer> --%>

    <!--end of footer-->
    <script>
        function goToEventsPage() {
            // Go to the "Events.jsp" page
            window.location.href = "Home";
        }
    </script>
    <!--bootstrap for sidebar-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Bootstrap and other scripts can be included here -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>
