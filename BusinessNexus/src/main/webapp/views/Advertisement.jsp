<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <style>
        body {
            background: linear-gradient(to left, #FFFFFF, black);
            color: #000000;
        }

        /* Add responsive styles here */
        @media (max-width: 768px) {
            .list-group {
                margin-right: 0;
            }

            .container {
                padding-right: 10px;
                padding-left: 10px;
            }

            .card {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
    <!-- main section starts -->
    <div class="col-md-9">
        <div class="list-group" style="padding-top: 20px; margin-right: 300px;">
            <div class="container">
                <!-- Center the row -->
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <!-- Your existing code goes here -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- main section ends -->

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
            window.location.href = "home.jsp";
        }
    </script>
</body>
</html>
