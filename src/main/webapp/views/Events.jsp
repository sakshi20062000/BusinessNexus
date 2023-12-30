<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Event Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to left, #FFFFFF, #99b3ff);
            color: #00008B;
        }

        .card-header {
            background-color: #343a40;
            color: #fff;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<header>
    <%@include file="Navbar.jsp" %>
</header>
<!-- End of Navbar -->

<!-- Main content starts -->
<div class="container mt-3">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card ">
                <div class="card-header bg-secondary text-white text-center">
                    <h3 style="font-family: 'Arial', font-size: 30px">Events</h3>
                </div>
                <div class="card-body">
                    <form id="myForm" action="EventsServlet" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="reminderId" id="reminderId" value="">
                        <div class="form-group">
                            <label for="text">Text:</label>
                            <textarea class="form-control" name="text" id="text" rows="5" cols="50"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="date">Date:</label>
                            <input class="form-control" type="date" name="date" id="date">
                        </div>
                        <div class="form-group">
                            <label for="image">Image:</label>
                            <input class="form-control-file" type="file" name="image" id="image" accept="image/*">
                        </div>
                        <div class="d-flex justify-content-center mt-3"> 
                            <button id="event-btn" type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main content ends -->

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
    document.getElementById("myForm").addEventListener("submit", function (event) {
        event.preventDefault(); // Prevent the form from submitting normally

        // Perform form validation if needed
        var text = document.getElementById("text").value;
        var date = document.getElementById("date").value;
        var image = document.getElementById("image").value;

        // Generate a unique ID
        var reminderId = generateUniqueId();

        // Set the generated ID in the form data
        var formData = new FormData(this);
        formData.append("reminderId", reminderId);

        // Submit the form via AJAX
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "EventsServlet", true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                // Display success notification
                Swal.fire({
                    icon: "success",
                    title: "Success",
                    text: "Data inserted successfully!",
                }).then(function () {
                    // Optional: Redirect to another page
                    window.location.href = "Events.jsp";
                });
            } else {
                // Display error notification with server error message
                Swal.fire({
                    icon: "error",
                    title: "Error",
                    text: "An error occurred while inserting data: " + xhr.responseText,
                });
            }
        };
        xhr.onerror = function () {
            // Display error notification for network errors
            Swal.fire({
                icon: "error",
                title: "Error",
                text: "An error occurred while sending the request.",
            });
        };
        xhr.send(formData);
    });

    function generateUniqueId() {
        // Generate a timestamp-based ID
        var timestamp = new Date().getTime();
        var random = Math.floor(Math.random() * 1000); // Add a random number for additional uniqueness
        return timestamp + "_" + random;
    }
</script>
</body>
</html>