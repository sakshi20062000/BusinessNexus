<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Business nexus</title>
    </head>
    <body style="background: linear-gradient(to left, #FFFFFF, #99b3ff); color: #000000;">

        <!--navbar starts-->
        <header>
            <%@include file="Navbar.jsp" %>
        </header>
        <!--navbar ends-->


        <div class="col-md-3" style="margin-left: 510px ; padding-top: 100px; padding-left: 140px">
            <div class="card mt-2">
                <div class="card-footer">
                    <h5>We are coming soon</h5>
                    <!--Back Button -->
                    <button onclick="goToEventsPage()" style="font-size: 16px; position: absolute; top: 70px; right: 66px; transform: translate(-50%, 0); background: white; border: 1px solid black; border-radius: 6px; cursor: pointer;">Back</button>

                </div>
            </div>
        </div>




        <!--        main body starts
                <main>
                    <h1>Latest News</h1>
                    
                    <article>
                        <h2>Breaking News 1</h2>
                        <img src="path_to_image1.jpg" alt="News Image 1" width="300" height="200">
                        <p>This is the content of breaking news 1.</p>
                    </article>
                    
                    <article>
                        <h2>Breaking News 2</h2>
                        <img src="path_to_image2.jpg" alt="News Image 2" width="300" height="200">
                        <p>This is the content of breaking news 2.</p>
                    </article>
                    
                     Add more news articles with images as needed 
                    
                </main>
                main body ends-->
<!-- 1st profile model starts -->
<div style="flex-grow: 1; background-color: white; height:270px; width: 250px;text-align: center; margin-top:-132px; padding: 10px; display: flex; flex-direction: column; align-items: center;">
    <div style="position: relative; width: 100%; height: 60px; padding: 0; background-image: url(https://imageio.forbes.com/blogs-images/josephliu/files/2019/06/5-company-conference-conference-room-1181435-1200x299.jpg?format=jpg&amp;width=1440); background-size: cover;"></div>
	<div style="width: 70px;height:70px;position: relative; margin-top:-40px; border-radius: 50%; overflow: hidden; border: 2px solid #000;">
        <img src="/profilePage?id=${userDetails.userId}" alt="Profile Picture" style="width: 100%; height: 100%; object-fit: cover;">
    </div>
    <p style="font-weight: bold;"><a href="ProfilePage" style="text-decoration: none; color: inherit;">${userDetails.firstName} ${userDetails.lastName}</a></p>
    <p><b>About:</b> ${userDetails.about}</p>
</div>
<!-- 1st profile model ends -->
</div>

<div class="" style="width: 40%;margin: auto;">
    <c:forEach items="${posts}" var="post">
        <div class="card" style="width:100%;margin: 15px auto">
            <!-- Profile Image -->
            <img src="/profilePage?id=${post.user.userId}" class="profile-image rounded-circle" style="border-radius:50%;border:2px solid black;height:50px;width:50px;margin-left:20px; margin-top:15px; margin-bottom:1px">
            <div class="post-content">
                <!-- Post Description -->
                <p class="post-description" style="margin: 20px"><b></b> ${post.description}</p>
                <!-- Post Image -->
                <img src="/ImagePage?id=${post.id}" alt="Post Image" class="post-image img-fluid" style="width: 100%;">
                <!-- Like, Dislike, and Comment Buttons -->
                <div class="post-buttons" style="margin-top:20px;margin-left:50px">
    				<button class="fa fa-commenting" style="height:5vh;width:15vh; margin-left:25px;margin-bottom:15px;" onclick="dealButtonClick()"><b> Deal</b></button>
    				<button class="like-button" data-postid="${post.id }" style="height:5vh;width:15vh; margin-left:20px" onclick="meetButtonClick()"> <b class="like-count" >Meet:${post.likedBy.size()}</b></button>
    				<button class="fa fa-share" style="height:5vh;width:15vh; margin-left:20px" onclick="supportButtonClick()"><b> Support</b></button>
    				<div class="comment-section">
                       
                        <ul>
                            <c:forEach items="${post.comments}" var="comment">
                                <li> ${comment.user.firstName} : ${comment.text}</li>
                            </c:forEach>
                        </ul>
                        <form class="comment-form" action="postComment" method="post">
                            <input type="hidden" name="postId" value="${post.id}">
                            <textarea name="commentText" class="comment-input" placeholder="Add a comment"></textarea>
                            <button type="submit" class="post-comment-button">Post Comment</button>
                        </form>
                    
            </div>
        </div>
        <!-- <hr class="post-separator"> Add a horizontal line after each post -->
    </c:forEach>
       <!-- Comment Section -->
                
</div>
</div>



        <script>
            function goToEventsPage() {
                // Go to the "Events.jsp" page
                window.location.href = "Events";
            }
        </script>
    </body>
</html>
