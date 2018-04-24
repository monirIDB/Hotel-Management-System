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
        <script src="resources/js/adminAngularJs.js" type="text/javascript"></script>

    </head>
    <body ng-app="hotelAdminApp" ng-controller="hotelAdminCtrl">
        <!--................Header, manubar............-->
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
                    <a href="index.jsp"> <i class="glyphicon glyphicon-log-out" style="font-size:60px;"></i></a>


                </div>

            </div>
            <!--................Manubar.............-->

            <div style="width: 100%; height: auto;">
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">

                        <ul class="nav navbar-nav">
                            <li id="adminhome"><a href="#/"><span class="glyphicon glyphicon-info-sign"></span>Information</a></li>


                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#adminChackIn"><span class="fa fa-bed"></span> Check In</a></li>
                            <li><a href="#adminchackout"><span class="glyphicon glyphicon-check"></span> Check Out</a></li>
                            <li><a href="#adminmembership"><span class="glyphicon glyphicon-user"></span> Membership</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div ng-view style="width: 100%; height: auto; float: left;"></div>

            
            
        </div>
        <!--............nav plugin.............-->
        

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
    </body>
</html>
