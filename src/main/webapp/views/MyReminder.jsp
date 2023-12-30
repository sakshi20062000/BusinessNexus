<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%-- <%@ page import="com.ashuadi.dao.ReminderDao" %>
<%@ page import="com.ashuadi.entities.reminders" %>
<%@ page import="com.ashuadi.helper.ConnectionProvider" %> --%>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">

        <!--navbar-->
        <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--end of navbar-->

        
        <div class="container-fluid " >
            <div class="row">
<!--sidebar starts-->
<div class="col-md-3" style="">
    <div class="card-text">
        <div class="list-group" style="padding-left: 15px; margin-top: 4px; width: auto; position: relative;">
            <div class="mt-3">
                <!-- Categories -->
                <div style="background-color: white; border-radius: 5px; padding: 6%;">
                    <h3>Reminders</h3>
                    <br/>
                    <a href="AllReminders.jsp" onclick="getPosts(0, this)" class="text-black d-block" style="color: black; font-size: 20px;">
                        <span class="fa fa-handshake-o"></span>  
                        All Reminders 
                    </a>
                    <br/>
                    <a href="thisweek.jsp" onclick="getPosts(0, this)" class="text-black d-block" style="color: black; font-size: 20px;">
                        <span class="fa fa-calendar"></span>
                        This Week
                    </a>
                    <br/>
<!--                    <a href="MyReminders.jsp" onclick="getPosts(0, this)" class="text-black d-block" style="color: black; font-size: 20px;">
                        <span class="fa fa-clone"></span>
                        My Reminders
                    </a>-->
                    <br/>

                    <!-- Back Button -->
                    <button onclick="goToEventsPage()" style="font-size: 16px; position: absolute; top: 20px; right: -20px; transform: translate(-50%, 0); background: none; border: 1px solid black; border-radius: 6px; cursor: pointer;">Back</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--sidebar ends-->


                <!--main section starts-->
                <div class="col-md-9">
                    <div class="list-group" style="padding-top: 20px; margin-right: 300px;">
                        <div class="container">
                            <!-- Center the row -->
                            <div class="row justify-content-center">
                                <div class="col-md-8">
                                  <%--   <% try {
                                            // Create an instance of ReminderDao using the ConnectionProvider
                                            ReminderDao reminderDao = new ReminderDao(ConnectionProvider.getConnection());

                                            // Retrieve all reminders from the database
                                            List<reminders> reminderList = reminderDao.getAllReminders();

                                            // Iterate over the reminderList and display the details
                            for (reminders r : reminderList) {%>
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <h5 class="card-title">Date: <%= r.getDate()%></h5>
                                            <p class="card-text"> <%= r.getText()%></p>
                                            <form action="DeleteServletReminder" method="post" class="delete-form">
                                                <input type="hidden" name="reminderId" value="<%= r.getId()%>">
                                                <button type="submit" class="btn btn-danger"><span class="fa fa-trash-o"></span></button>
                                            </form>
                                        </div>
                                        <img src="epics/<%= r.getPhoto()%>" class="card-img-top" alt="Reminder Photo">
                                    </div>
                                    <% }
                                        } catch (Exception e) {
                                            out.println("An error occurred: " + e.getMessage());
                                            e.printStackTrace();
                            }%> --%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--main section ends-->

            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script>
            <script>
        function deleteReminder(reminderId) {
                                                // Show confirmation dialog
                                                Swal.fire({
                                                title: 'Delete Reminder',
                                                        text: 'Are you sure you want to delete this reminder?',
                                                        icon: 'warning',
                                                        showCancelButton: true,
                                                        confirmButtonColor: '#3085d6',
                                                        cancelButtonColor: '#d33',
                                                        confirmButtonText: 'Yes, delete it!'
                                                }).then((result) => {
                                        if (result.isConfirmed) {
                                        // Send AJAX request to delete the reminder
                                        $.ajax({
                                        type: "POST",
                                                url: "deleteReminder.jsp", // Specify the URL of the server-side script to delete the reminder
                                                data: { reminderId: reminderId },
                                                success: function(response) {
                                                // Handle the response from the server
                                                if (response === "success") {
                                                Swal.fire('Deleted!', 'The reminder has been deleted.', 'success').then(() => {
                                                // Reload the page to update the reminder list
                                                location.reload();
                                                });
                                                } else {
                                                Swal.fire('Error!', 'An error occurred while deleting the reminder.', 'error');
                                                }
                                                },
                                                error: function(xhr, status, error) {
                                                Swal.fire('Error!', 'An error occurred while deleting the reminder.', 'error');
                                                }
                                        });
        </script>

      
<script>
    function goToEventsPage() {
        // Go to the "Events.jsp" page
        window.location.href = "Events";
    }
</script>


    </body>
</html>
<body>

</body>
</html>