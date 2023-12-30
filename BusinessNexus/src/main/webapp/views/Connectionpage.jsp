<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body
	style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
	<!-- Navbar -->
	<header>
		<%@include file="Navbar.jsp"%>
	</header>
	<!-- End of Navbar -->

	<HomeSidebar>
	 <%@include file="HomeSidebar.jsp"%>
	</HomeSidebar>

	<button onclick="goToEventsPage()" class="btn btn-outline-dark btn-block mt-3" style="size:">Back</button>


	<!-- Footer -->
	<footer>
		<%--<%@include file="footer.jsp" %>--%>
	</footer>

	<!-- JavaScript and Bootstrap Scripts -->
	<script>
		function goToEventsPage() {
			// Go to the "Events.jsp" page
			window.location.href = "Home";
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>