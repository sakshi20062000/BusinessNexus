x<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<a href="advertisingdata"></a>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Business Nexus</title>
    
    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
        .sidebar-card {	
            background-color: transparent;
            border: none;
            box-shadow: none;
        }
    </style>
</head>
<body>
   
    <div class="container">
        <div class="row justify-content-center">
            <div class="sidebar" style="margin: 50px 0 0 0;padding: 40px;border: 2px solid black">
                <ul class="nav flex-column"> 
                    <li class="nav-item">
                        <a class="nav-link list-group-item-action active" href="#" style="font-size: 30px; padding-left: 40px;"><strong>Used Data</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action active" href="ExportYourData" onclick="getPosts(0, '')" style="font-size: 20px; padding-left: 40px;">Get Copy Of Your Data<i class="fa fa-long-arrow-right" style="padding-left: 303px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="InvitationToConnect" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;">Invitations To Connect<i class="fa fa-long-arrow-right" style="padding-left: 305px;" aria-hidden="true"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="NetworkInvite" onclick="getPosts(2, '')" style="font-size: 20px; padding-left: 40px;">Invitation From Network<i class="fa fa-long-arrow-right" style="padding-left: 285px;" aria-hidden="true"></i></a>
                    </li>
                   
                    <li class="nav-item">
                        <a class="nav-link c-link list-group-item-action" href="Messages_You_Recevied" onclick="getPosts(1, '')" style="font-size: 20px; padding-left: 40px;">Messages<i class="fa fa-long-arrow-right" style="padding-left: 410px;" aria-hidden="true"></i></a>
                    </li>
                   </ul>
                
            </div>
        </div>
        
        
        
    </div>
    
   
   

</body>
</html>