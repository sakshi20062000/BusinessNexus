<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<style>

/* Post Buttons Container */
.post-buttons {
	margin-top: 10px;
	display: flex;
	gap: 10px;
}

/* Like, Dislike, and Comment Buttons */
.like-button, .dislike-button, .comment-button {
	background-color: #0073b1; /* LinkedIn blue color */
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 5px 10px;
	cursor: pointer;
	outline: none;
}
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Include other CSS and JavaScript files here -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<style>
.post {
	margin-bottom: 20px;
	/* Adjust the margin as needed to create the desired gap */
}
</style>

<body
	style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
	
	 <navbar>
		<%@include file="Navbar.jsp"%>
	</navbar>



		<div class="container">
			<div class="row">
				<div class="col-12 col-md-3 col-lg-3 mt-3 h-auto">
					<!-- 1st profile model starts -->
					<div class="border rounded-1 bg-white text-center"
						style="flex-grow: 1; padding: 10px; display: flex; flex-direction: column; align-items: center;">
						<div
							style="position: relative; width: 100%; height: 60px; padding: 0; background-image: url(https://imageio.forbes.com/blogs-images/josephliu/files/2019/06/5-company-conference-conference-room-1181435-1200x299.jpg?format=jpg&amp;width=1440); background-size: cover;"></div>
						<div
							style="width: 70px; height: 70px; position: relative; margin-top: -40px; border-radius: 50%; overflow: hidden; border: 2px solid #000;">
							<img src="/profilePage?id=${userDetails.userId}"
								alt="Profile Picture"
								style="width: 100%; height: 100%; object-fit: cover;">
						</div>
						<p style="font-weight: bold;">
							<a href="ProfilePage"
								style="text-decoration: none; color: inherit;">${userDetails.firstName}
								${userDetails.lastName}</a>
						</p>
						<p>
							<b>About:</b> ${userDetails.about}
						</p> 
					</div>
					
					
					
					
				</div>

				<div class="col-12 col-md-6 col-lg-6 h-auto">
					<div class="card mt-3 w-100">
						<div class="card-body w-100">
							<a href="#" data-toggle="modal" data-target="#post-modal"
								style="text-decoration: none;"> <img
								src="/profilePage?id=${userDetails.userId}"
								class="rounded-circle img-fluid text-center border ms-0"
								style="width: 50px; height: 50px;" /> <input
								style="margin-left: 55px; margin-top: -45px;"
								class="form-control no-underline w-75"
								placeholder="Something about your post" />
							</a>
							<div class="d-flex justify-content-evenly">
								<a data-toggle="modal" data-target="#post-modal" href="#"
									class="btn btn-light text-center mt-3" role="button"
									aria-pressed="true"> <span class="fa fa-file-photo-o"></span>
									Photos
								</a> <a data-toggle="modal" data-target="#post-modal" style=""
									#" class="btn btn-light text-center mt-3" role="button"
									aria-pressed="true"> <span class="fa fa-file-video-o"></span>
									Video
								</a> 
									<a data-toggle="modal" data-target="#post-modal" style=""
									href="#" class="btn btn-light text-center mt-3" role="button"
									aria-pressed="true"> <span class="fa fa-edit"></span>Article
								</a>
							</div>

						</div>
					</div>
					
				
					<div class="w-100" style="width: 40%; margin: auto;">
    <c:forEach items="${posts}" var="post" varStatus="loop">
        <c:set var="reverseIndex" value="${posts.size() - loop.index - 1}" />
        <c:set var="reversedPost" value="${posts[reverseIndex]}" />

        <div class="card d-flex" style="position: relative; width: 100%; margin: 15px auto">
            <!-- Profile Image -->
            <img src="/profilePage?id=${reversedPost.user.userId}" class="profile-image rounded-circle"
                style="border-radius: 50%; border: 1px solid black; height: 50px; width: 50px; margin-left: 20px; margin-top: 15px; margin-bottom: 1px" />
            <p class="" style="position: absolute; top: 25px; left: 80px;">${reversedPost.user.firstName} ${reversedPost.user.lastName}</p>
            <div class="post-content">
                <!-- Post Description -->
                <p class="post-description" style="margin: 20px">${reversedPost.description}</p>
                <!-- Post Image -->
                <img src="/ImagePage?id=${reversedPost.id}" alt="Post Image" class="post-image img-fluid" style="width: 100%;">
                <!-- Like, Dislike, and Comment Buttons -->
                <div class="post-buttons d-flex justify-content-around mb-2 mt-3">
                    <button class="like-button" data-postid="${reversedPost.id}" onclick="meetButtonClick()">
                        <b class="like-count">Support: ${reversedPost.likedBy.size()}</b>
                    </button>
                    <button class="btn btn-light" onclick="toggleCommentSection(this)">
                        <i class="fa fa-handshake-o"></i> Deal
                    </button>
                     <button class="btn btn-light">
                        <i class="fa fa-share"></i> Meet
                    </button>
                </div>
                <div class="comment-section">
                    <div class="homii" style="display: none;">
                        <form class="comment-form" action="postComment" method="post">
                            <input type="hidden" name="postId" value="${reversedPost.id}">
                            <textarea name="commentText" class="comment-input" style="width: 100%; height: 100px;" placeholder="Add a comment"></textarea>
                            <br>
                            <button type="submit" class="post-comment-button">Post Comment</button>
                        </form>
                       <c:forEach items="${reversedPost.comments}" var="comment">
                            <li> ${comment.user.firstName} : ${comment.text}</li>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

				</div>

				<div class="col-12 col-md-3 col-lg-3 h-auto d-none d-md-block">
					<!-- 2th profile model starts -->
				<div class="bg-white text-center border rounded-1"
						style="flex-grow: 1; margin-top: 17px; padding: 10px; display: flex; flex-direction: column; align-items: center;">
						<ul class="mcd-menu" style="list-style-type: none; padding: 0;">

							<h4 class="fs-5">Manage My Network</h4>
							<hr class="post-separator">

							<li><a href="Events" class="text-black fs-5 text-decoration-none"> <i
									class="fa fa-calendar text-black"></i> Events 
							</a></li>
							<!-- <li class=""><a href="Product" class="text-black fs-5 text-decoration-none"> <i
									class="fa fa-gift text-black"> </i> Products 
							</a></li> -->
						</ul>
					</div>
				</div>

		</div>
		
		</div>
		 <!--profile model edits starts-->
		<div class="modal fade" id="post-modal" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="margin-top:-100px">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">
                    <img src="/profilePage?id=${userDetails.userId}"
                        class="rounded-circle img-fluid text-center"
                        style="width: 40px; height: 40px;" border="1px solid black"/>
                    ${userDetails.getFirstName()}
                </h5>
                <button type="button" class="close" data-dismiss="modal"
                    aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="addPost" action="AddPost" method="post" enctype="multipart/form-data">

                    <div class="form-group">
                        <textarea name="pdescription" class="form-control" style="height: 200px;" placeholder="Enter your Caption" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Select your pic..</label> <br> <input type="file" name="file" required>
                    </div>
                    <div class="container text-center">
                        <button type="submit" class="btn btn-outline-primary" id="postButton" onclick="postOnce()">Post</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

		<!--profile model edit ends-->
          
<script>
    function postOnce() {
        // Get form data
        const form = document.getElementById('addPost');
        const formData = new FormData(form);

        // Make an AJAX request
        const xhr = new XMLHttpRequest();
        xhr.open('POST', '/AddPost', true); // Change 'your_server_endpoint_url_here' to the actual endpoint URL

        // Set up a callback function for when the request completes
        xhr.onload = function () {
            if (xhr.status === 200) {
                // Request was successful, handle the response here
                alert('Image posted successfully!');
                // You can add code here to handle the response from the server
                // For example, you might want to update the UI with the new post
                updateUIWithNewPost(xhr.responseText);
            } else {
                // Request failed, handle errors here
                alert('Error posting image. Please try again.');
            }
        };

        // Send the form data to the server
        xhr.send(formData);
    }

    let formSubmitted = false;

    function postOnce() {
        if (!formSubmitted) {
            formSubmitted = true;
            document.getElementById("addPost").submit();
        }
    }

    function toggleCommentSection(button) {
        var commentSection = button.parentElement.parentElement.querySelector('.comment-section .homii');
        if (commentSection.style.display === 'none' || commentSection.style.display === '') {
            commentSection.style.display = 'block';
        } else {
            commentSection.style.display = 'none';
        }
    }

    $(document).ready(function() {
        $(".like-button").click(function() {
            var postId = $(this).data("postid");
            var likeButton = $(this); // Store the button element

            $.ajax({
                type: "POST",
                url: "/likePost",
                data: { postId: postId },
                success: function(response) {
                    var likeCountElement = likeButton.siblings(".like-count"); // Use the stored button element
                    likeCountElement.text("Meet: " + response);
                    console.log(response);
                },
                error: function(error) {
                    console.error(error);
                }
            });
        });
    });

    function disablePostButton() {
        // Disable the button to prevent multiple submissions
        document.getElementById("postButton").disabled = true;

        // Submit the form
        document.getElementById("addPost").submit();
    }

    function openNewsPopup() {
        // Code to open the popup (e.g., show it)
        document.getElementById('newsPopup').style.display = 'block';
    }

    function closeNewsPopup() {
        // Code to close the popup (e.g., hide it)
        document.getElementById('newsPopup').style.display = 'none';
    }

    // Function to update the UI with the new post
    function updateUIWithNewPost(post) {
        // Assuming you have a function to append the new post to the existing posts on the page
        appendPostToUI(post);
    }

    // Function to append a new post to the existing posts on the page
    function appendPostToUI(post) {
        // Your logic to append the new post to the UI
        // For example, you might update a div with the new post content
        $("#postsContainer").prepend("<div class='post'>" + post + "</div>");
    }
</script>

</body>
</html>