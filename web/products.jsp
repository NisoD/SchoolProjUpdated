<!DOCTYPE html>
<html lang="en">
    <head>
        <title>D.I.N Solutions Products</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
            .carousel-inner > .item > img,
            .carousel-inner > .item > a > img {
                width: 70%;
                margin: auto;
            }
        </style>
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
                            <li><a href="form.jsp">Registration</a></li>
                            <li class="active"><a href="products.jsp">Our Products</a></li>
                            <li><a href="about.jsp">About</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Registration.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>    

        <div class="container">
            <br>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>

                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">

                    <div class="item active">
                        <img src="Files/CT.png" alt="CT" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>CT Corporation</h3>
                            <p>CT Corporation's comprehensive managed services enable law firms, corporate legal departments and small businesses to manage statutory representation for all their entities</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="Files/onesumx.png" alt="onesumx" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>OneSumX</h3>
                            <p>OneSumX provides an ecosystem of complementary and comprehensive solutions and services to help financial institutions manage</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="Files/cashsuite.png" alt="cashsuite" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>Cash Suite</h3>
                            <p>CASH Suite? is a powerful commercial lending software solution that enables loan teams to streamline tasks like business development</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
       <a href="mail.jsp"<h3><center>Contact us if you are interested in our products at dinsoultions@gmail.com</center></h3>
    </body>
</html>