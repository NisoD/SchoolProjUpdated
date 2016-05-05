<%-- 
    Document   : about
    Created on : May 5, 2016, 12:37:33 PM
    Author     : Niso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Page</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/formCSS.css">
    </head>
    <body>
        <!--navbar-->
        <div id="navBarWrapper">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.jsp">D.I.N Solutions</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="form.jsp">Registration Form</a></li>
                            <li><a href="products.jsp">Our Products</a></li>
                            <li class="active"><a href="about.jsp">about</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    
       <center> <p> The owner of D.I.N Solutions is Dmitry Nisnevich</p></center>
    <center><img src="Files/Dima.jpg" alt="Profile" style="width:200px;height:200px;"></center>
    <center><p> <a href="Files/DimaNisnevich.pdf">Click Here to read about him</a></p></center>
    <script type="text/javascript" src="JavaScript/formJS.js" ></script>
    <!--must be included in every page for bootstrap-->
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
