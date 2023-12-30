<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    </head>
    <body  style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #00008B;">
        <!--navbar-->                                                                        
        <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--end of navbar--> 
        <!--sidebar starts-->
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
                                        <span class="fa fa-handshake-o"style=""></span>  
                                        All Reminders 
                                    </a>
                                    <br/>
                                    <a href="ThisWeek" onclick="getPosts(0, this)" class="text-black d-block"style="color: black;font-size: 20px"">
                                        <span class="fa fa-calendar"></span>
                                        This Week
                                    </a>
                                   <br/>
                                    <!-- Back Button -->
                                    <button onclick="goToEventsPage()" style="font-size: 16px; position: absolute; top: 30px; right: 10px; transform: translate(-50%, 0); background: none; border: 1px solid black; border-radius: 6px; cursor: pointer;">Back</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--sidebar ends-->
                <!--main content starts-->
                <div class="col-md-8" style="padding-top: 20px">
                    <div class="card">
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
                                <button id="event-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!--main content ends-->
            </div>
        </div>
        <!--footers-->
        <footer>
            <%--<%@include file="footer.jsp" %>--%>
        </footer>
        <!-- Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
                                            var random = Math.floor(Math.random() * 1000); // Add random number for additional uniqueness
                                            return timestamp + "_" + random;
                                        }
        </script>
        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "ImpConnection";
            }
        </script>
    </body>
</html>
