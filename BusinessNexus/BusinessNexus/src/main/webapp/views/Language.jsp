<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>

        <div class="container" style="border: 1px solid black; width: 60%; margin: 50px 0 0 200px;padding-left: 40px; padding-bottom: 20px">
            <a href="AccountPreferance" style="text-decoration: none;">
                <div class="one" style="display: flex; margin: 25px 0 0 0; cursor: pointer;">
                    <span class="fa fa-long-arrow-left" aria-hidden="true"></span>
                    <h5 style="font-size: 15px; margin-left: 15px;">Back</h5>
                </div>
            </a>
            <div class="two" style="margin: 25px 0 0 0;">
                <h4 style="font-size: 17px;">Language</h4>
            </div>
            <p>Select Language Preferences</p>
            <div class="three" style="display: flex;">
                <select name="language" id="language" style="width: 200px">
                        <option value="en">English</option>
                        <option value="fr">French</option>
                        <option value="es">Spanish</option>
                        <option value="en">Marathi</option>
                        <option value="fr">Hindi</option>
                        <option value="es">German</option>
                        <option value="en">Dutch</option>
                        <option value="fr">Arabic</option>
                        <option value="es">Russian</option>
                        <option value="en">Korean</option>
                        <option value="fr">Japnese</option>
                        <option value="es">Swedish</option>
                        Add more language options as needed 
                    </select>
        </div>
        </div>
        

    </div>

</body>
</html>






























<!--Select Language Preferences
</head>
<div style="text-align: center;border:1px solid black;">
    <h1 style="padding-right: 80px;">Languages</h1>
    <h3>Select Language Preferences</h3>
    <form action="languageAction.jsp" method="post">
        <label for="language" style="padding-right: 20px;">Preferred Language:</label>
        <select name="language" id="language">
            <option value="en">English</option>
            <option value="fr">French</option>
            <option value="es">Spanish</option>
            <option value="en">Marathi</option>
            <option value="fr">Hindi</option>
            <option value="es">German</option>
            <option value="en">Dutch</option>
            <option value="fr">Arabic</option>
            <option value="es">Russian</option>
            <option value="en">Korean</option>
            <option value="fr">Japnese</option>
            <option value="es">Swedish</option>
             Add more language options as needed 
        </select>
        <br><br>
        <button type="submit" style="margin-bottom: 20px;">Save Preferences</button>
    </form>
</div>
</html>-->