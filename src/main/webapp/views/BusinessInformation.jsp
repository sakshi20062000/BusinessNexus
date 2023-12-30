<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background: linear-gradient(to left, #FFFFFF, #99b3ff);
            color: #000000;
        }
        /* Add responsive CSS here */
        @media (max-width: 992px) {
            .col-md-3 {
                flex: 0 0 100%;
                max-width: 100%;
            }
            .col-md-10 {
                flex: 0 0 100%;
                max-width: 100%;
                margin-left: 0;
                margin-top: 20px;
            }
        }
    </style>
</head>
<body>

<!--navbar-->
<header>
    <%@include file="Navbar.jsp" %>
</header>
<!--end of navbar-->

<div class="container-fluid">
    <div class="row">
        <!--sidebar starts-->
        <div class="col-md-3">
            <div class="card-text">
                <div class="list-group" style="padding-left: 15px; margin-top: 4px;">
                    <div class="mt-3">
                        <!-- Categories -->
                        <div style="background-color: white; border-radius: 5px; padding: 6%;">
                            <h3>Reminders</h3>
                            <br/>
                            <a href="AllReminder" onclick="getPosts(0, this)" class="text-black d-block" style="color: black; font-size: 20px;">
                                <span class="fa fa-handshake-o"></span>
                                All Reminders
                            </a>
                            <br/>
                            <a href="ThisWeek" onclick="getPosts(0, this)" class="text-black d-block" style="color: black; font-size: 20px;">
                                <span class="fa fa-calendar"></span>
                                This Week
                            </a>
                            <br/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--sidebar ends-->

        <!--main section starts-->
        <div class="col-md-10">
            <div class="list-group" style="padding-top: 20px; margin-left: 20px; margin-top: -260px">
                <div class="container">
                    <!-- Center the row -->
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <!-- Your content goes here -->
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
            }
        });
    }

    function goToEventsPage() {
        // Go to the "Events.jsp" page
        window.location.href = "Events";
    }
</script>

</body>
</html>
