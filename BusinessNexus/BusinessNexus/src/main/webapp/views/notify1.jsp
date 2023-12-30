<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!--css-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />

<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
}
</style>
</head>

<body style="background-color: #dfdfdf">


	<!--navbar-->
	<header>

		<%@include file="Navbar.jsp"%>
	</header>

	<!--end of navbar-->

	<!--        <div style="display: flex;">
            <div style="display: flex; margin:auto; width: 35%">
                <div class="container" style="padding-top: 2%; position: absolute;">
                    <div class="row mt-8" style=" width:570px; border: 1px solid grey; border-radius:2% ;height: 70px; background-color: white;">
                        <div class="col-md-0 ">
                            <div style="width: 50%; margin: auto; display:inline;justify-content: space-around;" id="ember28" class="artdeco-pill-choice-group ember-view nt-pill-list__pill-choice-group">

                                <button style="border-radius:7px;margin:20px 10px 0 30px"; aria-checked="true" role="radio" aria-label="All" id="ember29" class="artdeco-pill artdeco-pill--slate artdeco-pill--3 artdeco-pill--choice artdeco-pill--selected ember-view nt-pill" type="button">  
                                    All
                                          
                                    </button>


                                <button style="border-radius:7px;margin:20px 10px 0 10px"; aria-checked="false" role="radio" aria-label="My posts" id="ember30" class="artdeco-pill artdeco-pill--slate artdeco-pill--3 artdeco-pill--choice ember-view nt-pill" type="button">  
                                    My posts
                                                  
                                        </button>
        
        
                                        <button style="border-radius:7px;margin:20px 10px 0 10px"; aria-checked="false" role="radio" aria-label="Mentions" id="ember31" class="artdeco-pill artdeco-pill--slate artdeco-pill--3 artdeco-pill--choice ember-view nt-pill" type="button">  
                                            Mentions
                                                  
                                        </button>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>-->

	<div style="display: flex;">
		<div style="display: flex; margin: auto; width: 75%">
			<div class="container" style="padding-top: 2%; position: absolute;">
				<div class="row mt-8"
					style="width: 240px; border: 1px solid grey; border-radius: 2%; height: 300px; background-color: white;">
					<div class="col-md-0">
						<!-- categories -->
						<a href="follow.jsp" onclick="getPosts(0, this)"
							class="c-link list-group-item list-group-item-action"
							style="border: none; font-size: 22px; text-align: center"> <strong>
								Manage Your Notifications</strong>
						</a> <a href="setting" onclick="getPosts(0, this)"
							class="c-link list-group-item list-group-item-action"
							style="border: none; font-size: 18px; margin-top: 10px"> <span
							class="fa fa-cog" aria-hidden="true"></span> View Settings
						</a>
						<!-- other categories -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>


</body>
</html>