<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Business Nexus</title>
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<!-- Add viewport meta tag -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body
	style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">

	<main class="d-flex align-items-center banner-background"
		style="height: 100vh;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="card">
						<div class="card-header bg-secondary text-white text-center">
							<h3 style="font-family: Arial; font-size: 30px;">Sign In</h3>
						</div>
						<div class="card-body">
							<form id="log-form" action="LoginPage" method="POST">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										name="email" required type="email" class="form-control"
										aria-describedby="emailHelp" placeholder="Enter email">
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group form-field password-fields">
									<label for="password">Password</label>
									<div class="input-group">
										<input name="password" type="password" class="form-control"
											id="password" placeholder="Password must be 8 digits"
											required>
										<div class="input-group-append">
											<span class="input-group-text" style="cursor: pointer;"
												onclick="togglePasswordVisibility()"> <i
												id="passwordToggleIcon" class="fa fa-eye-slash"></i>
											</span>
										</div>
									</div>
								</div>
								<div class="container text-center">
									<button type="submit" class="btn btn-secondary btn-block">Sign In</button>
									<br> <a href="forget" class="btn btn-link"
										style="font-style: italic;">Forgot Password</a> <a
										href="Register" class="btn btn-link"
										style="font-style: italic;">Sign Up</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>



	<!-- Add scripts as before -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>


	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

	<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("password");
        var passwordToggleIcon = document.getElementById("passwordToggleIcon");

        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            passwordToggleIcon.className = "fa fa-eye";
        } else {
            passwordInput.type = "password";
            passwordToggleIcon.className = "fa fa-eye-slash";
        }
    }

    $(document).ready(function () {
        console.log("Loaded.....")

        $('#log-form').on('submit', function (event) {
            event.preventDefault();

            let form = new FormData(this);

            $("#submit-btn").hide();
            $("#loader").show();

            $.ajax({
                url: "LoginPage",
                type: 'POST',
                data: form,
                processData: false,
                contentType: false,
                success: function (data, textStatus, jqXHR) {
                    console.log(data)
                    $("#submit-btn").show();
                    $("#loader").hide();

                    if (data.trim() === 'Done') {
                        swal({
                            text: "Login Successfully successfully... Redirecting to the login page",
                            icon: "success",
                            buttons: false,
                            timer: 1500 // Automatically close after 1.5 seconds
                        }).then((value) => {
                            window.location = "HomePage";
                        });
                    } else {
                        swal({
                            text: data,
                            icon: "error"
                        });
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(jqXHR)
                    $("#submit-btn").show();
                    $("#loader").hide();

                    swal({
                        text: "Something went wrong. Please try again...",
                        icon: "error"
                    });
                }
            });
        });
    });
</script>


</body>
</html>