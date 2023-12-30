<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Business Nexus</title>
<!-- CSS -->
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <style>
        .banner-background {
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
        }

        /* Common style for form fields */
        .form-field {
            margin-bottom: 10px;
            width: 100%; /* Set all form fields to have the same width */
        }

        /* Reduce the gap between "Password" and "Confirm Password" by 10px */
        .form-field.password-fields {
            margin-bottom: 5px;
        }

        /* Style for password error message */
        .password-error {
            color: red;
        }

        .form-group1 {
            display: inline-block;
            width: 48%; /* Adjust the width as needed */
            margin-right: 1%; /* Add some spacing between the fields */
        }
    </style>
</head>
<body style="background: linear-gradient(to left, #242582, #CAFAFE); color: #000000;">
    <main class="py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8">
                    <div class="card">
                        <div class="card-header bg-secondary text-white text-center">
                            <h3 style="font-family: Arial; font-size: 30px;">Sign Up</h3>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterPage" method="POST" onsubmit="return handleSubmit();" enctype="multipart/form-data">
                                <div class="form-group1 form-field">
                                    <label for="firstName">First Name</label>
                                    <input name="firstName" type="text" class="form-control" id="firstName" placeholder="Enter your first name" required>
                                </div>
                                <div class="form-group1 form-field">
                                    <label for="lastName">Last Name</label>
                                    <input name="lastName" type="text" class="form-control" id="lastName" placeholder="Enter your last name" required>
                                </div>

                                <div class="form-group form-field">
                                    <label for="email">Email address</label> <input name="email"
                                        type="email" class="form-control" id="email"
                                        placeholder="Enter email" required> <small
                                        class="form-text text-muted">We'll never share your
                                        email with anyone else.</small>
                                </div>
                                <div class="form-group1 form-field password-fields">
                                    <label for="password">Password</label>
                                    <div class="input-group">
                                        <input name="password" type="password" class="form-control"
                                            id="password" placeholder="Password must be 8 digits"
                                            required onpaste="return false;">
                                        <div class="input-group-append">
                                            <span class="input-group-text" style="cursor: pointer;"
                                                onclick="togglePasswordVisibility()"> <i
                                                id="passwordToggleIcon" class="fa fa-eye-slash"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group1 form-field password-fields">
                                    <label for="confirmPassword">Confirm Password</label>
                                    <div class="input-group">
                                        <input name="confirmPassword" type="password"
                                            class="form-control" id="confirmPassword"
                                            placeholder="Password should be the same as Password"
                                            required onpaste="return false;">
                                        <div class="input-group-append">
                                            <span class="input-group-text" style="cursor: pointer;"
                                                onclick="toggleConfirmPasswordVisibility()"> <i
                                                id="confirmPasswordToggleIcon" class="fa fa-eye-slash"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Password error message -->
                                <div class="password-error" id="passwordError"></div>
                                <div class="form-group form-field">
                                    <label for="businessDocuments">Business Documents</label> <select
                                        name="doc" class="form-control" id="businessDocuments"
                                        required onchange="showCustomInput()">
                                        <option value="">Select One</option>
                                        <option value="pancard">Pancard</option>
                                        <option value="gst_number">Business GST Number</option>
                                        <option value="msme_certificate">MSME Certificate</option>
                                    </select>
                                </div>
                                <div class="form-group form-field" id="customDocumentInput"
                                    style="display: none;">
                                    <input name="customDocument" type="text" class="form-control"
                                        placeholder="Enter Document Number"
                                        oninput="convertToUppercase(this)">
                                </div>
                                <div class="form-group">
                                    <p id="customDocumentError" style="color: red;"></p>
                                </div>
                                <div class="form-group form-field">
                                    <label for="businessImage">Upload Business Image (Image
                                        of selected business document)</label> <input type="file"
                                        name="businessImage" class="form-control-file"
                                        accept="application/pdf" required>
                                </div>
                                <div class="form-group form-field">
                                    <label for="businessType">Business Types</label> <select
                                        name="types" class="form-control" required>
                                        <option value="">Select One</option>
                                        <option>Service Business</option>
                                        <option>Proprietor</option>
                                        <option>Manufacturing Business</option>
                                        <option>Merchandising Business</option>
                                        <option>Partnership</option>
                                        <option>Corporation</option>
                                        <option>Franchise</option>
                                        <option>Limited Company</option>
                                        <option>Cooperative</option>
                                    </select>
                                </div>
                                <div class="form-check form-field">
                                    <input name="check" type="checkbox" class="form-check-input"
                                        id="exampleCheck1" required> <label
                                        class="form-check-label" for="exampleCheck1">I agree
                                        to all terms and conditions</label>
                                </div>
                                <button id="submit-btn" type="submit"
                                    class="btn btn-secondary btn-block">Sign Up</button>
                            </form>
                            <p class="mt-1">
                                If you already have an account, <a href="login"
                                    class="btn btn-link" style="font-style: italic;">Sign In</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>




	<!-- JavaScript -->
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

	<script>
		function convertToUppercase(inputField) {
			inputField.value = inputField.value.toUpperCase();
		}

		function togglePasswordVisibility() {
			var passwordInput = document.getElementById("password");
			var passwordToggleIcon = document
					.getElementById("passwordToggleIcon");

			if (passwordInput.type === "password") {
				passwordInput.type = "text";
				passwordToggleIcon.className = "fa fa-eye";
			} else {
				passwordInput.type = "password";
				passwordToggleIcon.className = "fa fa-eye-slash";
			}
		}

		function toggleConfirmPasswordVisibility() {
			var confirmPasswordInput = document
					.getElementById("confirmPassword");
			var confirmPasswordToggleIcon = document
					.getElementById("confirmPasswordToggleIcon");

			if (confirmPasswordInput.type === "password") {
				confirmPasswordInput.type = "text";
				confirmPasswordToggleIcon.className = "fa fa-eye";
			} else {
				confirmPasswordInput.type = "password";
				confirmPasswordToggleIcon.className = "fa fa-eye-slash";
			}
		}
		// Function to validate email address
		function validateEmail() {
			const emailInput = document.getElementById("email");
			const validationMessage = document.getElementById("emailHelp");

			// Regular expression for email validation
			const emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

			const email = emailInput.value;

			if (emailRegex.test(email)) {
				validationMessage.textContent = "Valid email address.";
				validationMessage.style.color = "green";
			} else {
				validationMessage.textContent = "Invalid email address. Please enter a valid email.";
				validationMessage.style.color = "red";
			}
		}

		// Function to show/hide the custom input field based on the selected option
		function showCustomInput() {
			var selectedOption = document.getElementById("businessDocuments").value;
			var customDocumentInput = document
					.getElementById("customDocumentInput");

			if (selectedOption === "pancard" || selectedOption === "gst_number"
					|| selectedOption === "msme_certificate") {
				if (customDocumentInput) {
					customDocumentInput.style.display = "block";
					customDocumentInput.querySelector("input").required = true; // Make the custom input required
				}
			} else {
				if (customDocumentInput) {
					customDocumentInput.style.display = "none";
					customDocumentInput.querySelector("input").required = false; // Make the custom input not required
				}
			}
		}

		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							var myForm = document.getElementById("reg-form");
							if (myForm) {
								var newPasswordInput = myForm
										.querySelector("[name='password']");
								var confirmPasswordInput = myForm
										.querySelector("[name='confirmPassword']");
								var passwordError = document
										.getElementById("passwordError");

								myForm
										.addEventListener(
												"submit",
												function(event) {
													var newPassword = newPasswordInput.value;
													var confirmPassword = confirmPasswordInput.value;

													if (newPassword !== confirmPassword) {
														event.preventDefault(); // Prevent the form from submitting
														passwordError.textContent = "Passwords do not match. Please make sure they match.";
														passwordError.style.color = "red";
													} else if (!isValidPassword(newPassword)) {
														event.preventDefault(); // Prevent the form from submitting
														passwordError.textContent = "Invalid password. Please enter a valid password.";
														passwordError.style.color = "red";
													} else {
														// Passwords match and are valid
														passwordError.textContent = "Passwords match and are valid.";
														passwordError.style.color = "green";
													}
												});

								// Add input event listeners to reset the error message when the user types
								newPasswordInput.addEventListener("input",
										function() {
											clearPasswordError();
										});

								confirmPasswordInput.addEventListener("input",
										function() {
											clearPasswordError();
										});

								function isValidPassword(password) {
									// Add your password validation logic here
									// Example: Check if the password has a minimum length or any other requirements
									return password.length >= 8; // Example: Minimum length of 8 characters
								}

								function clearPasswordError() {
									passwordError.textContent = ""; // Clear the error message
									passwordError.style.color = ""; // Clear the error message color
								}
							}
						});

		// Custom validation function for PAN card
		function validatePANCard(panNumber) {
			// Check if panNumber is defined and not null
			if (panNumber !== undefined && panNumber !== null) {
				// Add your PAN card validation logic here
				// Example: Check if the PAN number matches the pattern /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/
				var panRegex = /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;
				return panRegex.test(panNumber.toUpperCase()); // Ensure the input is in uppercase for comparison
			}
			return false; // If panNumber is undefined or null, consider it invalid
		}

		// Custom validation function for GST Number
		function validateGSTNumber(gstNumber) {
			// Add your GST number validation logic here
			// Example: Check if the GST number matches a valid pattern
			var gstRegex = /^([0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1})$/;
			return gstRegex.test(gstNumber);
		}

		// Custom validation function for MSME Certificate
		function validateMSMECertificate(msmeCertificateNumber) {
			// Add your MSME Certificate validation logic here
			// Example: Check if the MSME Certificate number matches a valid pattern
			var msmeRegex = /^UDYAM-[A-Z]{2}-[0-9]{2}-[0-9]{7}$/;
			return msmeRegex.test(msmeCertificateNumber);
		}

		function handleSubmit() {
			var selectedOption = document.getElementById("businessDocuments").value;
			var customDocumentInput = document
					.getElementById("customDocumentInput");
			var customDocumentValue = customDocumentInput ? customDocumentInput
					.querySelector("input").value : "";
			var customDocumentError = document
					.getElementById("customDocumentError");

			customDocumentError.textContent = ""; // Clear any previous error messages

			// Check if a custom document input is required
			if (customDocumentInput
					&& customDocumentInput.style.display !== "none"
					&& customDocumentValue.trim() === "") {
				customDocumentError.textContent = "Please enter the custom document number.";
				customDocumentError.style.color = "red";
				return false; // Prevent the form from submitting
			}

			// Check if any document is selected and validate it
			if (selectedOption === "pancard"
					&& !validatePANCard(customDocumentValue)) {
				customDocumentError.textContent = "Invalid PAN Card number. Please enter a valid PAN Card number.";
				customDocumentError.style.color = "red";
				return false; // Prevent the form from submitting
			} else if (selectedOption === "gst_number"
					&& !validateGSTNumber(customDocumentValue)) {
				customDocumentError.textContent = "Invalid GST Number. Please enter a valid GST Number.";
				customDocumentError.style.color = "red";
				return false; // Prevent the form from submitting
			} else if (selectedOption === "msme_certificate"
					&& !validateMSMECertificate(customDocumentValue)) {
				customDocumentError.textContent = "Invalid MSME Certificate number. Please enter a valid MSME Certificate number.";
				customDocumentError.style.color = "red";
				return false; // Prevent the form from submitting
			}

			// If all validations pass, the form will submit
			return true;
		}
	</script>


</body>
</html>