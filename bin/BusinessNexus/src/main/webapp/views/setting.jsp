<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
}

.sidebar {
	width: 280px;
	background-color: #f8f9fa;
	padding-top: 0px;
	position: fixed;
	height: 86.4vh;
}

.box {
	min-width: calc(100% - 280px); /* Adjust the width */
	max-width: calc(100% - 280px); /* Adjust the width */
	height: 30vh;
	overflow: hidden;
	padding: 20px;
	margin-left: auto;
}

.navbar {
	z-index: 1;
}

.card {
	width: 100%;
	height: 100%;
	border: none;
	box-shadow: none;
}

iframe {
	width: 100%;
	height: 100%;
	border: none;
}
</style>
</head>
<body>

	<!--navbar-->
	<header>
		<%@include file="Navbar.jsp"%>
	</header>

	<div class="container-fluid">
		<div class="row">

			<div class="col-2.5 sidebar position-sticky "
				style="margin-top: 5px;">
				<ul class="nav flex-column" style="margin-left: 10px;">

					<li class="nav-item"><a
						class="nav-link list-group-item-action active" href="#"
						style="font-size: 30px; margin-left: 0;"><strong>Settings</strong></a>
					</li>
					<li class="nav-item"><a
						class="nav-link c-link list-group-item-action active"
						href="javascript:void(0);"
						onclick="getPosts('AccountPreferance')"
						style="font-size: 20px; padding-top: 15px;"><span
							class="fa fa-user-o" aria-hidden="true"></span> Account
							Preferences</a></li>
					<li class="nav-item"><a
						class="nav-link c-link list-group-item-action"
						href="javascript:void(0);"
						onclick="getPosts('Sign_Security')"
						style="font-size: 20px; padding-top: 15px;"><span
							class="fa fa-lock aria-hidden" aria-hidden="true"></span> Sign in
							& Security</a></li>
					<li class="nav-item"><a
						class="nav-link c-link list-group-item-action"
						href="javascript:void(0);" onclick="getPosts('Notifications')"
						style="font-size: 20px; padding-top: 15px;"><span
							class="fa fa-bell" aria-hidden="true"></span> Notifications</a></li>
					<li class="nav-item"><a
						class="nav-link c-link list-group-item-action"
						href="javascript:void(0);" onclick="getPosts('DataPrivacy')"
						style="font-size: 20px; padding-top: 15px;"><span
							class="fa fa-tint" aria-hidden="true"></span> Data Privacy</a></li>
					<li class="nav-item"><a
						class="nav-link c-link list-group-item-action"
						href="javascript:void(0);" onclick="getPosts('Visibility')"
						style="font-size: 20px; padding-top: 15px;"><span
							class="fa fa-eye" aria-hidden="true"></span> Visibility</a></li>
					<li class="nav-item"><a
						class="nav-link c-link list-group-item-action"
						href="javascript:void(0);"
						onclick="getPosts('Advertising')"
						style="font-size: 20px; padding-top: 15px;"><span
							class="fa fa-credit-card" aria-hidden="true"></span> Advertising
							Data</a></li>
				</ul>
			</div>
			<div class="col-9 box"
				style="max-width: 70%; height: 87.5vh; margin: 0; padding: 7px 0 0 0;">
				<div class="card" style="border: 1px solid none;">
					<div class="card-body" style="padding: 0">
						<iframe id="contentFrame1" src="" frameborder="0"></iframe>
					</div>
				</div>
				<div class="card" style="border: 1px solid none;">
					<div class="card-body" style="padding: 0">
						<iframe id="contentFrame2" src="" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- JavaScript -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script>
		function getPosts(url) {
			$('#contentFrame1').attr('src', url);
			$('#contentFrame2').attr('src', url); // Load the same URL in both iframes
		}
	</script>

</body>
</html>>