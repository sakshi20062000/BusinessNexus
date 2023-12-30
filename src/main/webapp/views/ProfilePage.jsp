<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dyykc2MPK8M2HN"
        crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
<navbar>
<%@include file="Navbar.jsp"%>
</navbar>

	<div class="container-fluid">
		<div class="row">
			<div class="col-12 col-md-12 col-lg-12 m-0 p-0">
				<div class="card custom-card my-3" style="width: 93%; margin: auto;">

					<form action="InsertRequest" method="post">
						<div class="card custom-card m-0 p-0 border-none">
							<div class="card-body" style="position: relative;">
								<div
									style="position: relative; width: 100%; height: 150px;background-image: url(https://imageio.forbes.com/blogs-images/josephliu/files/2019/06/5-company-conference-conference-room-1181435-1200x299.jpg?format=jpg&amp;width=1440); padding: 0; background-size: cover;">
									<img src="/profilePage?id=${userDetails.banner}"
										alt=" "
										style="width: 100%; height: 150px; object-fit: cover;" />
								</div>

								<div class="border d-flex"
									style="width: 140px; height: 140px; border-radius: 50%; overflow: hidden; margin: -90px auto 0 20px; position: relative;">
									<img src="/profilePage?id=${userDetails.userId}"
										alt="Profile Picture"
										style="width: 100%; height: 100%; object-fit: cover;" />
								</div>
								 <a class="fa fa-pencil text-black"
									style="position: absolute; top: 180px; right: 20px; height: 20px; width: 20px;"
									href="EditTopUser" data-toggle="modal" data-target="#EditTopUser"></a>
								
								<div>
									<p style="margin-left: 30px;font-weight: bold;">
										<a href="profilePage?id=${userDetails.userId}"
											style="text-decoration: none; color: inherit;">${userDetails.firstName} ${userDetails.lastName}</a>
									</p>
									<div class="paragraph-container">
										<p style="margin-left: 30px;">
											<b>About:</b>
										</p>
									</div>

									<input type="hidden" name="profileId" value="${userDetails.userId }"/>
									<!-- <button id="myButton" onclick="myFunction()" type="submit" class="btn btn-light blue-button">Connect</button>
								 --></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row d-flex justify-content-around mt-3">
			<div class="col-12 col-md-3 col-lg-3 ms-3">
				<div class="border">
					<div class=" w-auto"
						style="flex-grow: 1; background-color: white; text-align: center;height:300px; margin-top:0px;">
						<div class="card border-0 w-100">
							<div class="card-body text-justify d-flex justify-content-around"
								style="position: relative;">
								<h5 class="card-title text-center">Personal Information</h5>
								<div class="d-flex justify-content-between"
									style="position: absolute; top: 5px; right: 0px">
									
									<a class="fa fa-pencil text-black"
										style="position: relative; height: 20px; width: 20px;"
										href="User" data-toggle="modal" data-target="#EditUser"></a>
								</div>
							</div>
							<p class="card-text text-justify p-3" style="word-wrap:break-word;margin: -30px 0 0 0;width:auto; text-align:left;" id="more-content1">
								<!-- First two lines are shown by default -->
								  <label><b>Name:</b> ${userDetails.firstName } ${userDetails.lastName }</label>
							    <br>
							      <label><b>HeadLine:</b> ${userDetails.headLine }</label>
							    <br>
							       <label><b>Industry:</b> ${userDetails.industry }</label>
							    <br>
							      <label><b>About:</b> ${userDetails.about }</label>
							    <br>
							    <label><b>Interest:</b> ${userDetails.interest_In}</label>
							    <br>
							</p>
							<!-- <a href="#" class="card-link view-more-button" data-target="more-content1">View Less</a> -->
						</div>
					</div>
				</div>
				<div class="border mt-5">
					<div class="w-auto"
						style="flex-grow: 1; background-color: white; text-align: center;height:300px; margin-top: 0px;">
						<div class="card border-0">
							<div class="card-body text-justify d-flex justify-content-around mb-0"
								style="position: relative;">
								<h5 class="card-title text-center mt-0 p-0 w-100" >Education Information</h5>
								<div class="d-flex justify-content-between"
									style="position: absolute; top: 5px; right: 0px">
									
									 <a class="fa fa-pencil text-black"
										style="position: relative; height: 20px; width: 20px;"
										href="Education" data-toggle="modal" data-target="#EditEducation"></a> 
								</div>
							</div>
							<p class="card-text text-justify p-3" style="word-wrap:break-word;margin: -30px 0 0 0;width:auto; text-align:left;" id="more-content3">
								<!-- First two lines are shown by default -->
								
							<label><b>School:</b> ${userDetails.educationId[0].school }</label>
							<br>
							<label><b>Degree:</b> ${userDetails.educationId[0].degree }</label>
							<br>
							<label><b>Date:</b> ${userDetails.educationId[0].startDate }-${userDetails.educationId[0].endDate }</label>
							<br>
							<label><b>Skills:</b> ${userDetails.educationId[0].skills }</label>
							<br>
							<label><b>Grade:</b> ${userDetails.educationId[0].grade }</label>
							<br>
							</p>
							<!-- <a href="#" class="card-link view-more-button" data-target="more-content3">View Less</a> -->
						</div>
					</div>
				</div>
			</div>

	
			<div class="col-12 col-md-5 col-lg-5 mt-0">
    <c:forEach items="${posts}" var="post">
        <div class="p-2 bg-white mb-5" style="width: 100%;">
            <!-- Profile Image -->
            <img src="/profilePage?id=${post.user.userId}" class="profile-image rounded-circle"
                style="border-radius: 50%; border: 1px solid black; height: 50px; width: 50px;"> <a>${userDetails.firstName} ${userDetails.lastName}</a>
            <div class="post-content">
                <!-- Post Description -->
                <p class="post-description">
                    <b></b> ${post.description}
                </p>
                <!-- Post Image -->
                <img src="/ImagePage?id=${post.id}" alt="Post Image" class="post-image img-fluid" style="width: 100%;">
                <!-- Like, Dislike, and Comment Buttons -->
                <div class="post-buttons d-flex justify-content-around mb-2 mt-3">
                    <button id="supportButton-${post.id}" class="like-button1" data-postid="${post.id}" onclick="meetButtonClick(this)">
                        <b class="like-count1">Support:${post.likedBy.size()}</b>
                    </button>
                    <button id="commentButton" class="btn btn-light" onclick="toggleCommentSection(this)">
                        <i class="fa fa-handshake-o"></i> Deal
                    </button>
                    <button class="btn btn-light">
                        <i class="fa fa-share"></i> Meet
                    </button>
                </div>
                <div class="comment-section">
                    <div class="panu" style="display: none;">
                        <form class="comment-form" action="postComment" method="post">
                            <input type="hidden" name="postId" value="${post.id}">
                            <textarea name="commentText" class="comment-input" style="width: 100%; height: 100px;"
                                placeholder="Add a comment"></textarea>
                            <br>
                            <button type="submit" class="post-comment-button">Post Comment</button>
                        </form>
                        <c:forEach items="${post.comments}" var="comment">
                            <li> ${comment.user.firstName} : ${comment.text}</li>                           
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
			
			<div class="col-12 col-md-3 col-lg-3">
				<div class="border me-3">
					<div class="w-auto"
						style="flex-grow: 1; background-color: white; text-align: center;height:300px; margin-top: 0px;">
						<div class="card border-0 w-100">
							<div class="card-body text-justify d-flex justify-content-around"
								style="position: relative;">
								<h5 class="card-title text-center">Business Information</h5>
								<div class="d-flex justify-content-between"
									style="position: absolute; top: 5px; right: 0px">
										<a class="fa fa-pencil text-black"
										style="position: relative; height: 20px; width: 20px;"
										href="Business" data-toggle="modal" data-target="#EditBusiness"></a>
								</div>
							</div>
							<%-- <p class="card-text text-justify p-3" style="word-wrap:break-word;margin: -30px 0 0 0;width:auto; text-align:left;" id="more-content3">
								<!-- First two lines are shown by default -->
							 	
							<label><b>CompanyName:</b> ${userDetails.businessId.companyName }</label>
							<br>
							<label><b>Tagline:</b> ${userDetails.businessId.tagLine }</label>
							<br>
							<label><b>Website:</b> ${userDetails.businessId.websiteUrl }</label>
							<br>
							<label><b>Year:</b> ${userDetails.businessId.yearFounded }</label>
							<br>
							<label><b>Size:</b> ${userDetails.businessId.companySize }</label>
							<br> 
							</p> --%>
							<!-- <a href="#" class="card-link view-more-button" data-target="more-content2">View Less</a> -->
						</div>
					</div>
				</div>
				<div class="border me-3 mt-5 mb-5">
					<div class=" w-auto"
						style="flex-grow: 1; background-color: white; text-align: center;height:300px; margin-top: 0px;">
						<div class="card border-0 w-100">
							<div class="card-body text-justify d-flex justify-content-around"
								style="position: relative;">
								<h5 class="card-title text-center">About Experience</h5>
								<div class="d-flex justify-content-between"
									style="position: absolute; top: 5px; right: 0px">

									<a class="fa fa-pencil text-black"
										style="position: relative; height: 20px; width: 20px;"
										href="Experience" data-toggle="modal" data-target="#EditExperience"></a>
								</div>
							</div>
							<%-- <p class="card-text text-justify p-3" style="word-wrap:break-word;margin: -30px 0 0 0;width:auto; text-align:left;" id="more-content3">
								<!-- First two lines are shown by default -->
								
							<label><b>Position:</b> ${userDetails.experienceId.position}</label>
							<br>
							<label><b>CompanyName:</b> ${userDetails.experienceId.companyName }</label>
							<br>
							<label><b>Date:</b> ${userDetails.experienceId.startDate }-${userDetails.experienceId.endDate }</label>
							<br>
							<label><b>EmploymentType:</b> ${userDetails.experienceId.employmentType }</label>
							<br>
							<label><b>Skills:</b> ${userDetails.experienceId.skillsUsed }</label>
							<br>
							</p> --%>
							<!-- <a href="#" class="card-link view-more-button" data-target="more-content4">View Less</a> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $(".like-button1").click(function() {
            var postId = $(this).data("postid");
            var likeCountElement = $(this).find(".like-count1");

            $.ajax({
                type: "POST",
                url: "/likePost",
                data: { postId: postId },
                success: function(response) {
                    // Update the like count with the response value
                    likeCountElement.text("Support: " + response);
                    console.log(response);
                },
                error: function(error) {
                    console.error(error);
                }
            });
        });
 ���});
</script>




	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ej2dJ63U6S0zq1n1ldGf6udlr48l7/1r2y5/TXn3mTlK3zXnRw5xb89tQIdMyw5FJ"
        crossorigin="anonymous"></script>

	<!-- <script>
	    $(document).ready(function() {
	        $('.view-more-button').click(function(e) {
	            e.preventDefault();
	            var targetId = $(this).data('target');
	            var target = $('#' + targetId);
	            target.find('.extra-content').toggleClass('d-none');
	            if (target.find('.extra-content').hasClass('d-none')) {
	                $(this).text('View More');
	            } else {
	                $(this).text('View Less');
	            }
	        });
	    });

	    function myFunction() {
	        alert("Button clicked!");
	    }
	</script> -->
	
	<!-- Include Bootstrap JS and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	<script>
		// JavaScript to handle button click event
		document.getElementById("editButton").addEventListener("click",
				function() {
					// Toggle the edit icon
					const icon = document.querySelector(".edit-icon");
					icon.classList.toggle("fa-edit");
					icon.classList.toggle("fa-check-circle");
				});
	</script>
	
	
<!-- TopUser starts -->
	<div class="modal fade" id="EditTopUser" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Edit User</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form >
						<div class="mb-3">
							<label for="firstName" class="col-form-label">First Name:</label>
							<input type="text" class="form-control" id="firstName" value="${userDetails.firstName}">
						</div>
						<div class="mb-3">
							<label for="lastName" class="col-form-label">Last Name:</label> <input
								type="text" class="form-control" id="lastName">
						</div>
						<div class="mb-3">
							<label for="emailAddress" class="col-form-label">Email
								Address:</label> <input "onlyshowemailhere">
						</div>
						<div class="mb-3">
							<label for="headLine" class="col-form-label">Business
								Documents:</label> <input type="text" class="form-control" id="headLine">
							<input type="text" class="form-control" id="headLine">
						</div>
						<div class="mb-3">
							<label for="industry" class="col-form-label">Business
								Category:</label> <input type="text" class="form-control" id="industry">
						</div>
						<div class="mb-3">
							<label for="userLocation" class="col-form-label">Business
								Types:</label> <input type="text" class="form-control" id="userLocation">
						</div>

						<button id="myButton" input type="submit" value="Submit"
							onclick="submitForm()" class="btn btn-primary">Edit</button>
					</form>

				</div>
			</div>
		</div>
	</div>

	<!-- TopUser ends -->

<div class="modal fade" id="EditUser" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Edit Personal Information</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="Edit" enctype="multipart/form-data" method="post">
						/*<div class="mb-3">
							<label for="firstName" class="col-form-label">First Name:</label>
							<input type="text" class="form-control" name="firstName" value="${userDetails.firstName}">
							
							<input type="text" class="form-control" name="userId" value="${userDetails.userId}">
						</div>
						<div class="mb-3">
							<label for="lastName" class="col-form-label">Last Name:</label> <input
								type="text" class="form-control" name="lastName">
						</div>*/
						<div class="mb-3">
							<label for="additionalName" class="col-form-label">Additional
								Name:</label> <input type="text" class="form-control"
								name="additionalName">
						</div>
						<div class="mb-3">
							<label for="headLine" class="col-form-label">Headline:</label> <input
								type="text" class="form-control" name="headLine">
						</div>
						<div class="mb-3">
							<label for="industry" class="col-form-label">Industry:</label> <input
								type="text" class="form-control" name="industry">
						</div>
						<div class="mb-3">
							<label for="userLocation" class="col-form-label">Location:</label>
							<input type="text" class="form-control" name="userLocation">
						</div>
						<div class="mb-3">
							<label for="emailAddress" class="col-form-label">Email
								Address:</label> <input "onlyshowemailhere">
						</div>
						<div class="mb-3">
							<label for="phoneNumber" class="col-form-label">Phone
								Number:</label> <input type="text" class="form-control" name="phoneNumber">
						</div>
						<div class="mb-3">
							<label for="birthDate" class="col-form-label">Birth Date:</label>
							<input type="date" class="form-control" name="birthDate">
						</div>
						<div class="mb-3">
							<label for="message-text" class="col-form-label">About:</label>
							<textarea class="form-control" name="message-text"></textarea>
						</div>
						<div class="mb-3">
							<label for="interest_In" class="col-form-label">Interests:</label>
							<input type="text" class="form-control" name="interest_In">
						</div>
						<div class="mb-3">
							<label for="photo" class="col-form-label">Photo:</label> <input
								type="file" class="form-control" name="photo">
						</div>
						<div class="mb-3">
							<label for="banner" class="col-form-label">Banner:</label> <input
								type="file" class="form-control" name="banner">
						</div>
						<div class="mb-3">
							<label for="street1" class="col-form-label">Street 1:</label> <input
								type="text" class="form-control" name="street1">
						</div>
						<div class="mb-3">
							<label for="street2" class="col-form-label">Street 2:</label> <input
								type="text" class="form-control" name="street2">
						</div>
						<div class="mb-3">
							<label for="country" class="col-form-label">Country:</label> <input
								type="text" class="form-control" name="country">
						</div>
						<div class="mb-3">
							<label for="state" class="col-form-label">State:</label> <input
								type="text" class="form-control" name="state">
						</div>
						<div class="mb-3">
							<label for="city" class="col-form-label">City:</label> <input
								type="text" class="form-control" name="city">
						</div>
						<div class="mb-3">
							<label for="pinCode" class="col-form-label">Pin Code:</label> <input
								type="text" class="form-control" name="pinCode">
						</div>
						<button id="myButton" input type="submit" value="Submit"
							onclick="submitForm()" class="btn btn-primary">Edit</button>
					</form>
				</div>
			</div>
		</div>
	</div>




	<!-- user ends -->

	<!-- Experience starts -->
	<div class="modal fade" id="EditExperience" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Edit
						Experience</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form>
						<div class="mb-3">
							<label for="employmentType" class="col-form-label">Employment
								Type:</label> <input type="text" class="form-control"
								id="employmentType">
						</div>
						<div class="mb-3">
							<label for="companyName" class="col-form-label">Company
								Name:</label> <input type="text" class="form-control" id="companyName">
						</div>
						<div class="mb-3">
							<label for="experienceLocation" class="col-form-label">Location:</label>
							<input type="text" class="form-control" id="experienceLocation">
						</div>
						<div class="mb-3">
							<label for="startDate" class="col-form-label">Start Date:</label>
							<input type="date" class="form-control" id="startDate">
						</div>
						<div class="mb-3">
							<label for="endDate" class="col-form-label">End Date:</label> <input
								type="date" class="form-control" id="endDate">
						</div>
						<div class="mb-3">
							<label for="description" class="col-form-label">Description:</label>
							<textarea class="form-control" id="description"></textarea>
						</div>
						<div class="mb-3">
							<label for="skillsUsed" class="col-form-label">Skills
								Used:</label> <input type="text" class="form-control" id="skillsUsed">
						</div>
						<button id="myButton" type="submit" class="btn btn-primary">Edit</button>
					</form>

				</div>
			</div>
		</div>
	</div> 
	
	<!-- Experience ends -->

	<!-- Education starts -->
	<div class="modal fade" id="EditEducation" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Edit
						Educational Information</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<%-- <div class="mb-3">
							<label for="firstName" class="col-form-label">First Name:</label>
							<input type="text" class="form-control" id="firstName" value="${userDetails.firstName}">
						</div>
						<div class="mb-3">
							<label for="lastName" class="col-form-label">Last Name:</label> <input
								type="text" class="form-control" id="lastName">
						</div> --%>
						<div class="mb-3">
							<label for="school" class="col-form-label">School:</label> <input
								type="text" class="form-control" id="school">
						</div>
						<div class="mb-3">
							<label for="degree" class="col-form-label">Degree:</label> <input
								type="text" class="form-control" id="degree">
						</div>
						<div class="mb-3">
							<label for="fieldOfStudy" class="col-form-label">Field of
								Study:</label> <input type="text" class="form-control" id="fieldOfStudy">
						</div>
						<div class="mb-3">
							<label for="startDate" class="col-form-label">Start Date:</label>
							<input type="date" class="form-control" id="startDate">
						</div>
						<div class="mb-3">
							<label for="endDate" class="col-form-label">End Date:</label> <input
								type="date" class="form-control" id="endDate">
						</div>
						<div class="mb-3">
							<label for="grade" class="col-form-label">Grade:</label> <input
								type="text" class="form-control" id="grade">
						</div>
						<div class="mb-3">
							<label for="activities" class="col-form-label">Activities:</label>
							<input type="text" class="form-control" id="activities">
						</div>
						<div class="mb-3">
							<label for="description" class="col-form-label">Description:</label>
							<textarea class="form-control" id="description"></textarea>
						</div>
						<div class="mb-3">
							<label for="skills" class="col-form-label">Skills:</label>
							<textarea class="form-control" id="skills"></textarea>
						</div>
						<button id="myButton" type="submit" class="btn btn-primary">Edit</button>
					</form>

				</div>
			</div>
		</div>
	</div>
	
	<!-- Education ends -->

	<!-- Business starts -->
<div class="modal fade" id="EditBusiness" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">

			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Edit
						Business Information</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form>
						<%-- <div class="mb-3">
							<label for="firstName" class="col-form-label">First Name:</label>
							<input type="text" class="form-control" id="firstName" value="${userDetails.firstName}">
						</div>
						<div class="mb-3">
							<label for="lastName" class="col-form-label">Last Name:</label> <input
								type="text" class="form-control" id="lastName">
						</div> --%>
						<div class="mb-3">
							<label for="logo" class="col-form-label">Logo:</label> <input
								type="file" class="form-control" id="logo">
						</div>
						<div class="mb-3">
							<label for="companyName" class="col-form-label">Company
								Name:</label> <input type="text" class="form-control" id="companyName">
						</div>
						<div class="mb-3">
							<label for="tagline" class="col-form-label">Tagline:</label> <input
								type="text" class="form-control" id="tagline">
						</div>
						<div class="mb-3">
							<label for="websiteUrl" class="col-form-label">Website
								URL:</label> <input type="text" class="form-control" id="websiteUrl">
						</div>
						<div class="mb-3">
							<label for="industry" class="col-form-label">Industry:</label> <input
								type="text" class="form-control" id="industry">
						</div>
						<div class="mb-3">
							<label for="companySize" class="col-form-label">Company
								Size:</label> <input type="text" class="form-control" id="companySize">
						</div>
						<div class="mb-3">
							<label for="companyType" class="col-form-label">Company
								Type:</label> <input type="text" class="form-control" id="companyType">
						</div>
						<div class="mb-3">
							<label for="phoneNo" class="col-form-label">Phone Number:</label>
							<input type="text" class="form-control" id="phoneNo">
						</div>
						<div class="mb-3">
							<label for="yearFounded" class="col-form-label">Year
								Founded:</label> <input type="text" class="form-control"
								id="yearFounded">
						</div>
						<div class="mb-3">
							<label for="description" class="col-form-label">Description:</label>
							<textarea class="form-control" id="description"></textarea>
						</div>
						<div class="mb-3">
							<label for="businessLocation" class="col-form-label">Business
								Location:</label>
							<textarea class="form-control" id="businessLocation"></textarea>
						</div>
						<div class="mb-3">
							<label for="companyPan" class="col-form-label">Company
								PAN:</label> <input type="text" class="form-control" id="companyPan">
						</div>
						<div class="mb-3">
							<label for="companyGst" class="col-form-label">Company
								GST:</label> <input type="text" class="form-control" id="companyGst">
						</div>
						<div class="mb-3">
							<label for="companyRegistration" class="col-form-label">Company
								Registration:</label> <input type="text" class="form-control"
								id="companyRegistration">
						</div>
						<div class="mb-3">
							<label for="panImage" class="col-form-label">PAN Image:</label> <input
								type="file" class="form-control" id="panImage">
						</div>
						<div class="mb-3">
							<label for="gstImage" class="col-form-label">GST Image:</label> <input
								type="file" class="form-control" id="gstImage">
						</div>
						<div class="mb-3">
							<label for="companyRegistrationImage" class="col-form-label">Company
								Registration Image:</label> <input type="file" class="form-control"
								id="companyRegistrationImage">
						</div>
						<div class="mb-3">
							<label for="facebookLink" class="col-form-label">Facebook
								Link:</label> <input type="text" class="form-control" id="facebookLink">
						</div>
						<div class="mb-3">
							<label for="instagramLink" class="col-form-label">Instagram
								Link:</label> <input type="text" class="form-control" id="instagramLink">
						</div>
						<div class="mb-3">
							<label for="twitterLink" class="col-form-label">Twitter
								Link:</label> <input type="text" class="form-control" id="twitterLink">
						</div>
						<div class="mb-3">
							<label for="linkedinLink" class="col-form-label">LinkedIn
								Link:</label> <input type="text" class="form-control" id="linkedinLink">
						</div>

						<button id="myButton" type="submit" class="btn btn-primary">Edit</button>
					</form>

				</div>
			</div>
		</div>
	</div>
	
	<!-- Business ends -->


	
</body>
</html>