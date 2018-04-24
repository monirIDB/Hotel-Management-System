<%-- 
    Document   : header
    Created on : Dec 18, 2016, 9:43:57 PM
    Author     : MIZAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MRS Hotel Ltd</title>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/registration.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/reservation.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/admin.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/adminOparation.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/myJquery.js" type="text/javascript"></script>
        <script src="resources/js/myAngularJs.js" type="text/javascript"></script>

    </head>
    <body ng-app="hotelApp" ng-controller="hotelCtrl">
        <!--................Header, manubar, bannar............-->
        <div id="app1" style="width: 100%; height: auto;">
            <!--..............Header............-->
            <div class="header">
                <div class="logo">
                    <img src="resources/images/Untitled-2.png" alt="logo"/>
                </div>
                <div class="sitename">
                    <h1>MRS Hotel Bangladesh</h1>
                </div>
                <div class="login">
                    <a href="http://www.facebook.com" target="_blank"> <i class="fa fa-facebook-square" style="font-size:70px;"></i></a>
                    <a href="http://www.google.com" target="_blank"> <i class="fa fa-google-plus-square" style="font-size:70px;"></i></a>
                    <a href="http://www.twitter.com" target="_blank"> <i class="fa fa-twitter-square" style="font-size:70px;"></i></a>
                    <a href="http://www.youtube.com" target="_blank"> <i class="fa fa-youtube-square" style="font-size:70px;"></i></a>
                    <a href="http://www.linkedin.com" target="_blank"> <i class="fa fa-linkedin-square" style="font-size:70px;"></i></a>
                    <a id="admin" href="#admin" data-toggle="modal" data-target="#myModal"> <i class="glyphicon glyphicon-log-in" style="font-size:60px;"></i></a>


                </div>

            </div>
            <!--................Manubar.............-->

            <div style="width: 100%; height: auto;">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">

                        <ul class="nav navbar-nav">
                            <li id="home"><a href="#/"><span class="glyphicon glyphicon-home"></span>Home</a></li>


                        </ul>
                        <ul class="nav navbar-nav navbar-right">

                            <li id="reservation"><a href="#reservation"><i class="fa fa-bed"></i> Reservation</a></li>
                            <li id="reg"><a href="#registration"><span class="glyphicon glyphicon-user"></span> Membership</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div ng-view style="width: 100%; height: auto; float: left;"></div>

            <!--.............Bannar...............-->
            <div id="mynav" style="width: 100%; height: auto;">
                <div class="banner">
                    <img src="resources/images/hotel.jpg" alt="hotel" />
                </div>
                <div class="carrosol">

                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div style="width: 50%; height: 350px; float: left; padding:  50px 5%;">
                                    <img class="img img-rounded" src="resources/images/caro1.jpg" alt="caro1" style="height: 100%; width: 100%;"/>
                                </div>
                                <div style="width: 50%; height: 350px; float: left; padding:  100px 10%;">
                                    <h2 style="background-color: red; color: white; text-align: center;">SUMMER EARLY<br/>BOOKING </h2>
                                    <h4 style="background-color: red; color: white; text-align: center;">15% DISCOUNT </h4>
                                </div>
                            </div>
                            <div class="item">
                                <div class="container">
                                    <div class="row" style="height: 350px;">
                                        <div class="col-md-4" style="padding-top: 130px;">
                                            <div class="thumbnail">
                                                <a href="/w3images/lights.jpg" target="_blank">
                                                    <img src="resources/images/subanner1.jpg" alt="Pulpit Rock" style="width:100%; height: 80%;">
                                                    <div class="caption">
                                                        <p>Big confarrance holl for office metting.</p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-4" style="padding-top: 90px;">
                                            <div class="thumbnail">
                                                <a href="/w3images/nature.jpg" target="_blank">
                                                    <img src="resources/images/subanner2.jpg" alt="Moustiers Sainte Marie" style="width:100%; height: 80%;">
                                                    <div class="caption">
                                                        <p>Luxarious bad room with big aria.</p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-4" style="padding-top: 30px;">
                                            <div class="thumbnail">
                                                <a href="/w3images/fjords.jpg" target="_blank">
                                                    <img src="resources/images/subanner3.jpg" alt="Cinque Terre" style="width:100%; height: 80%;">
                                                    <div class="caption">
                                                        <p>Comfortable mitting holl.</p>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div style="width: 33%; height: 350px; float: left; padding:  80px 5%;">
                                    <h1 style="text-align: center;"><i class="fa fa-fax" style="font-size:30px;color:red"></i></h1>
                                    <h1 style="text-align: center;"><i style="font-size:30px;color:red">+1442542534444</i></h1>
                                </div>
                                <div style="width: 33%; height: 350px; float: left; padding:  70px 1%;">
                                    <img class="img img-rounded" src="resources/images/subbanner4.jpg" alt="caro1" style="height: 100%; width: 100%;"/>
                                </div>
                                <div style="width: 33%; height: 350px; float: left; padding:  80px 5%;">
                                    <h1 style="text-align: center;"><i class="fa fa-phone" style="font-size:30px;color:red"></i></h1>
                                    <h1 style="text-align: center;"><i style="font-size:30px;color:red">789254789</i></h1>
                                    <h1 style="text-align: center;"><i style="font-size:30px;color:red">+8801725400435</i></h1>
                                </div>
                            </div>
                            <div class="item">
                                <div style="width: 50%; height: 350px; float: left; padding:  130px 5%;">
                                    <h2 style="text-align: center; color: white; background-color: red;">HAVE BATTER FOOD EXPERIENCE</h2>
                                </div>
                                <div style="width: 50%; height: 350px; float: left; padding:  50px 5%;">
                                    <img class="img img-circle" src="resources/images/subbanner5.jpg" alt="caro1" style="height: 100%; width: 100%;"/>
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
            </div>
        </div>

        <!--................About, contact, location.............-->

        <div style="width: 100%; height: auto; background-color: #DCDCEA;">
            <div style="background-color: #DCDCEA;  float: left; width: 100%; font-size: 50px; text-align: justify; padding: 10px 30px;">
                About
            </div>
            <div style="box-shadow: 0px 0px 0px 0px; background-color: #DCDCEA; float: left; width: 100%; font-size: 20px; text-align: justify; padding: 30px 30px;">

                Be inspired by the vibrancy surrounding our exquisite 5 star accommodation in Dhaka. Our luxurious retreat offers a calming respite from the hustle and bustle of downtown Dhaka, where contemporary comforts will refresh your senses.

                Rejuvenate with our state-of-the-art facilities and an outdoor pool set amidst lush greenery. Take in the local culture where fascinating sights and sounds abound within close proximity to the Pan Pacific Sonargaon Dhaka hotel.

                Our prestigious 5 star Dhaka hotel situated prominently in the centre of Bangladesh’s Diplomatic Zone and commercial district. Steeped in rich history yet poised for success, the hotel is close to historic sites and exciting shopping. Experience a modern oasis in a bustling city at Pan Pacific Sonargaon Dhaka.
            </div>
            <div style="width: 100%; height: auto; float: left; background-color: #DCDCEA;">
                <div style="width: 50%; float: left; height: auto;">
                    <div style="float: left; width: 100%; font-size: 50px; text-align: justify; padding: 10px 30px;">
                        Contact
                    </div>
                    <div style="float: left; width: 100%; font-size: 20px; text-align: justify; padding: 30px 30px;">
                        <address style="text-align: center;">

                            Mrs Hotel Bangladesh<br/>
                            Kauronbazer, Dhaka<br/>
                            Bangladesh<br/>
                            Phone: 54876547<br/>
                            Mobile: +8801725400435<br/>
                            Email: mrshb@gmail.com<br/>
                            Fax: +44 2548 253 352
                        </address>

                    </div>
                </div>
                <div style="width: 50%; float: left; height: auto;">
                    <div style="width: 100%; font-size: 50px; text-align: right; padding: 10px 30px;">
                        Location
                    </div>
                    <div style="width: 100%; height: 300px; font-size: 20px; text-align: justify; padding: 30px 30px;">

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.938259590712!2d90.39232031460736!3d23.749580984589812!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b897e97a02b9%3A0x27f34ccd83ba6ede!2sPan+Pacific+Sonargaon+Dhaka+Hotel!5e0!3m2!1sen!2sbd!4v1482269504076" frameborder="0" style="border: 1px silver; height: 100%; width: 100%;" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <br/><br/>
        </div>

        <!--............nav plugin.............-->
        <%@include file="nav.jsp" %> 

        <!--.............footer..............-->

        <div class="footer">
            <div class="footer-left">
                <p style="color: #23527C; text-align: center; font-size: 20px;">Copyright<i class="fa fa-copyright"></i> MRS Hotel Bangladesh</p>
            </div>
            <div class="footer-middel">
                <a href="http://www.facebook.com" target="_blank"> <i class="fa fa-facebook-square" style="font-size:30px;"></i></a>
                <a href="http://www.google.com" target="_blank"> <i class="fa fa-google-plus-square" style="font-size:30px;"></i></a>
                <a href="http://www.twitter.com" target="_blank"> <i class="fa fa-twitter-square" style="font-size:30px;"></i></a>
                <a href="http://www.youtube.com" target="_blank"> <i class="fa fa-youtube-square" style="font-size:30px;"></i></a>
                <a href="http://www.linkedin.com" target="_blank"> <i class="fa fa-linkedin-square" style="font-size:30px;"></i></a>
            </div>
            <div class="footer-right">
                <a href="#" style="font-size: 20px; color: #23527C;">Tram & Condition</a> | 
                <a href="#" style="font-size: 20px; color: #23527C;">Privacy Policy</a>
            </div>
        </div>


        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog" ng-controller="loginCtrl">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="background-color: #DCDCEA;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Admin Login</h4>
                    </div>
                    <div class="modal-body">
                        <div class="login-form">
                            {{loginmessage}}
                            <h1 style="text-align: center; color: white;"><i class="glyphicon glyphicon-log-in" style="font-size:60px;"></i></h1>
                            <form name="loginform" novalidate>
                                <div class="row">
                                    <div class="col-md-2"></div>
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="email" type="email" ng-model="login.email" class="form-control" name="email" placeholder="Email" required/>
                                        </div>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input id="password" type="password" ng-model="login.password" class="form-control" name="password" placeholder="Password" required/>
                                        </div>
                                    </div>
                                    <div class="col-md-2"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5"></div>
                                    <div class="col-md-2">
                                        <a href="{{page}}"><button type="button" ng-click="dologin()" ng-disabled="loginform.$invalid" class="btn btn-primary loginbtn">Login</button></a>
                                    </div>
                                    <div class="col-md-5"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        

    </body>
</html>
