<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Make New Connections</title>

    <!-- Add Bootstrap CSS link (CDN) for responsive design -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .profile-picture img {
            border-radius: 50%; /* Make the image circular */
        }
    </style>
</head>

<body>
    <div class="container"> <!-- Add Bootstrap container class -->
        <!-- Navbar -->
        <%@include file="Navbar.jsp" %>
        <!-- End of Navbar -->

        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3">
                <%@include file="ConnectionSidebar.jsp" %>
            </div>
            <div class="col-md-9">
                <c:forEach var="user" items="${users}">
                    <a href='profilePage?id=${user.userId}' style='text-decoration: none;'>
                        <div class="user-container card mb-4 col-md-4" style="min-width: 62%; margin-left: 183px; margin-top: 10px;">
                            <div class="profile-picture">
                            <img src="/profilePage?id=${user.userId}" class="rounded-circle img-fluid text-center" style="width: 40px; height: 40px;" border="1px solid black" />
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">${user.firstName}</h5>
                                <p class="card-text">About: ${user.about}</p>
                                <p class="card-text">Email: ${user.email}</p>
                                <form action="InsertRequest" method="post">
                                    <input type="hidden" name="profileId" value="${user.userId}">
                                    <input type="hidden" name="name" value="${user.firstName}">
                                    <input type="hidden" name="email" value="${user.email}">
                                    <button type="submit" class="btn btn-primary">Connect</button>
                                </form>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap JS and jQuery (CDN) for Bootstrap features -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>