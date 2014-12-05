<!DOCTYPE HTML>
<html>
<head>
    <title>Toro Hotel | Contact</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/toro_style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="External_Lib/JFGrid.css"/>
    <link type="text/css" rel="stylesheet" href="External_Lib/JFFormStyle-1.css"/>
    <script type="text/javascript" src="External_Lib/JFCore.js"></script>
    <script type="text/javascript" src="External_Lib/JFForms.js"></script>
    <!-- key to hide the watermark on the web server -->
    <script type="text/javascript">
        (function () {
            JC.init({
                domainKey: 'Toro'
            });
        })();
    </script>
    <!--nav-->
    <script>
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();

            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });

            $(window).resize(function () {
                var w = $(window).width();
                if (w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
    </script>
</head>
<body>
<!-- start header -->
<div class="main_bg">
    <div class="wrap">
        <div class="header">
            <div class="logo">
                <a href="index.jsp"><img src="images/Hotel_Logo.png" alt=""></a>
            </div>
            <div class="h_right">
                <!--start menu -->
                <ul class="menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="rooms.jsp">rooms</a></li>
                    <li><a href="Booking.jsp">reservation</a></li>
                    <li><a href="Login.jsp">Staff</a></li>
                    <li class="active"><a href="contact.jsp">contact</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="top-nav">
                <nav class="clearfix">
                    <ul>
                        <li class="active"><a href="index.jsp">home</a></li>
                        <li><a href="rooms.jsp">rooms</a></li>
                        <li><a href="Booking.jsp">reservation</a></li>
                        <li><a href="Login.jsp">Staff</a></li>
                        <li><a href="contact.jsp">contact</a></li>
                    </ul>
                    <a href="#" id="pull">Menu</a>
                </nav>
            </div>
        </div>
    </div>
</div>
<!--start main -->
<div class="main_bg">
    <div class="wrap">
        <div class="main">
            <div class="contact">
                <div class="contact_left">
                    <div class="contact_info">
                        <h3>Find Us Here</h3>

                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3312.9557946651807!2d-118.2585147!3d33.8650301!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1417404392149"
                                    width="400" height="300" frameborder="0" style="border:0"></iframe>
                        </div>
                    </div>
                    <div class="company_address">
                        <h3>Hotel Information :</h3>

                        <p>1000 E. Victoria Street</p>

                        <p>Carson, CA 90747 </p>

                        <p>USA</p>

                        <p>Phone: (310) 243-3696</p>

                        <p>Fax: (310) 243-3696</p>

                        <p>Email: <a href="mailto:abnerb86@gmail.com">info.ToroHotel.com</a></p>

                        <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                    </div>
                </div>
                <div class="contact_right">
                    <div class="contact-form">
                        <h3>Contact Us</h3>

                        <form method="post" action="contact-post.jsp">
                            <div>
                                <span><label>NAME</label></span>
                                <span><input name="userName" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>E-MAIL</label></span>
                                <span><input name="userEmail" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>MOBILE</label></span>
                                <span><input name="userPhone" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>SUBJECT</label></span>
                                <span><textarea name="userMsg"> </textarea></span>
                            </div>
                            <div>
                                <span><input type="submit" value="submit"></span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="footer">
            <div class="copy">
                <p class="link"><span>© All rights reserved &nbsp;<a href="index.jsp">Toro Hotel</a></span></p>
            </div>
            <div class="f_nav">
                <ul>
                    <li><a href="index.jsp">home</a></li>
                    <li><a href="rooms.jsp">rooms</a></li>
                    <li><a href="Booking.jsp">reservation</a></li>
                    <li><a href="Login.jsp">staff</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
            <div class="soc_icons">
                <ul>
                    <li><a class="icon1" href="#"></a></li>
                    <li><a class="icon2" href="#"></a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
</div>
</body>
</html>