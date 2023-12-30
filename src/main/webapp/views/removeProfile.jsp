<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%-- <%
// Get the profile ID from the request parameter
String profileId = request.getParameter("profileId");

// Define the database connection details and create a connection object
String url = "jdbc:mysql://localhost:3306/phonix";
String username = "root";
String password = "";
Connection conn = null;

try {
    // Register the JDBC driver
    Class.forName("com.mysql.jdbc.Driver");

    // Create the connection
    conn = DriverManager.getConnection(url, username, password);

    // Move the profile to the removed profiles table
    String moveToRemovedQuery = "INSERT INTO removed (id, name, email, category)SELECT id, name, email, category FROM user WHERE id = ?";
    PreparedStatement moveToRemovedStatement = conn.prepareStatement(moveToRemovedQuery);
    moveToRemovedStatement.setString(1, profileId);
    moveToRemovedStatement.executeUpdate();
    moveToRemovedStatement.close();

    // Remove the profile from the user table
    String removeQuery = "DELETE FROM user WHERE id = ?";
    PreparedStatement removeStatement = conn.prepareStatement(removeQuery);
    removeStatement.setString(1, profileId);
    removeStatement.executeUpdate();
    removeStatement.close();

    // Redirect back to the connection page after ignoring the profile
    response.sendRedirect("ImpConnection");
} catch (SQLException e) {
    out.println("Error executing SQL query: " + e.getMessage());
} catch (ClassNotFoundException e) {
    out.println("Error loading JDBC driver: " + e.getMessage());
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
 --%>