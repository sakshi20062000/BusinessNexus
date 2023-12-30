<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Business Nexus</title>

    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
    </style>
</head>
<body>
    <div class="container" style="border: 1px solid black; width: 60%; margin: 50px 0 0 200px; padding-left: 40px">
        <a href="Sign_Security" style="text-decoration: none;">
            <div class="one" style="display: flex; margin: 25px 0 0 0; cursor: pointer;">
                <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
                <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
            </div>
        </a>
        <div class="two" style="margin: 25px 0 0 0;">
            <h4 style="font-size: 17px;">Phone Numbers</h4>
            <p style="font-size: 14px">Add New Phone Number</p>
        </div>
        <div class="three" style="margin: 25px 0 0 0;">
            <p>Enter New Phone Number</p>
        </div>
        <form action="savePhoneNumber.jsp" method="POST">
            <div class="text-field" style="margin: 25px 0;">
                <label for="number">Phone Number:</label>
                <input type="text" id="number" name="number" placeholder="Enter Phone Number" required>
            </div>
            <div class="four" style="margin: 25px 0 0 0;">
                <p>Enter Your Investor Lobby Password</p>
            </div>
            <div class="text-field" style="margin: 25px 0;">
                <label for="pass">Investor Lobby Password:</label>
                <input type="password" id="pass" name="password" placeholder="Enter Investor Lobby Password" required>
            </div>
            <div class="button-container" style="margin: 25px 0;">
                <button class="btn btn-primary" type="submit">Submit</button>
            </div>
        </form>
        <% 
            String number = request.getParameter("number");
            String password = request.getParameter("password");
            Connection conn = null;
            PreparedStatement stmt = null;

            
            try {
                // Modify the connection URL, username, and password based on your database configuration
                String url = "jdbc:mysql://localhost:3306/phonix";
                String username = "root";
                String dbPassword = "";
                
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phonix", "root", "");
                
                // Check if the 'number' parameter is not null or empty
                if (number != null && !number.isEmpty()) {
                    // Prepare the SQL statement to insert the phone number data into the table
                    String sql = "INSERT INTO phone (number, password) VALUES (?, ?)";
                    stmt = conn.prepareStatement(sql);
                    
                    stmt.setString(1, number);
                    stmt.setString(2, password);
                    stmt.executeUpdate();
                    
                    // Display a success message after data insertion
                    out.println("<p>Phone number added successfully!</p>");
                } else {
                    // Display an error message if 'number' parameter is null or empty
                    out.println("<p>Error adding phone number: Phone number cannot be null or empty</p>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                // Display an error message if there's an exception
                out.println("<p>Error adding phone number: " + e.getMessage() + "</p>");
            } finally {
                // Close the database resources
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            }
        %>
    </div>
</body>
</html>