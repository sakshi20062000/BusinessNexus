<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body
	style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">
	<!--navbar-->
	<%@include file="Navbar.jsp"%>
	<!--end of navbar-->

	<!--sidebar starts-->
	<%@include file="ConnectionSidebar.jsp"%>
	<!--sidbar ends-->

	<c:forEach var="user" items="${users}">
		<a href='profilePage?id=${user.sendId.photo}'
			style='text-decoration: none;'>
			<div
				style='position: relative; border: 1px solid; background-color: white; width: 600px; border-radius: 5px; margin: 10px auto; margin-top: 30px; margin-left: 341px; /* height: 20%;  */display: flex; justify-content: space-between; align-items: center;'>
				<div style='display: flex; align-items: center;'>
					<div
						style='display: inline-block; border-radius: 50%; overflow: hidden; border: 2px solid #000;'>
						<img src="/requestImage?id=${user.sendId.photo}"
							alt="Profile Picture"
							style="width: 100px; height: 100px; object-fit: cover;">
					</div>
					<div style='margin-left: 20px;'>
						<p style='font-weight: bold;'>
							<a href='profile?id=${user.sendId}'
								style='text-decoration: none; color: inherit;'>${user.sendId.firstName}</a>
						</p>
						<p>Email: ${user.sendId.email}</p>
					</div>
				</div>
				<div style='display: flex; align-items: center;'>
					<form action='AcceptProfile?userId=${user.sendId.userId}'
						method='post'>
						<input type='hidden' name='profileId'
							value='${user.sendId.userId}'>
						<button
							style='border-radius: 4px; width: 70px; background: lightblue; margin-top:135px;margin-top:86px;border: 1px solid black; cursor: pointer; transition: background 0.3s;'
							type='submit' onmouseover="this.style.background='darkgreen'"
							onmouseout="this.style.background='lightgreen'">Accept</button>
					</form>
					<form action='removeProfile' method='post'>
						<input type='hidden' name='profileId'
							value='${user.sendId.userId}'>
						<button
							style='border-radius: 4px; width: 70px; background: lightred;margin-top:87px;margin-left:10px;margin-right:10px; border: 1px solid black; cursor: pointer; transition: background 0.3s;'
							type='submit' onmouseover="this.style.background='darkred'"
							onmouseout="this.style.background='lightcoral'">Ignore</button>
					</form>
				</div>
			</div>
		</a>
	</c:forEach>
	<!--main section ends-->
</body>
</html>