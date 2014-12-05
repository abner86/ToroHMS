<%--
  Created by IntelliJ IDEA.
  User: abner benavides
  Date: 11/1/14
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Hotel.Rooms.Reservation"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Toro Hotel</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--css libraries/files---some of this files are external libraries that are necessary for the website-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/toro_style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="External_Lib/fwslider.css" media="all">
    <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css"/>
    <link type="text/css" rel="stylesheet" href="External_Lib/JFGrid.css"/>
    <link type="text/css" rel="stylesheet" href="External_Lib/JFFormStyle-1.css"/>
    <link type="text/css" rel="stylesheet" href="External_Lib/jquery-ui.css"/>
    <!--Jquery/Jquery-UI libraries-->
    <script src="//cdn.jsdelivr.net/css3-mediaqueries/0.1/css3-mediaqueries.js"></script>
    <script src="//cdn.jsdelivr.net/css3-mediaqueries/0.1/css3-mediaqueries.min.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <script src="External_Lib/fwslider.js"></script>
    <script type="text/javascript" src="External_Lib/JFCore.js"></script>
    <script type="text/javascript" src="External_Lib/JFForms.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <!---datepicker---->
    <script>
        $(function () {
            $("#checkin").datepicker();
        });
        $(function () {
            $("#checkout").datepicker();
        });
    </script>
    <!---End datepicker---->
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
            var menu = $('nav ul');
            var menuHeight = menu.height();

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
                    <li class="active"><a href="index.jsp">home</a></li>
                    <li><a href="rooms.jsp">rooms</a></li>
                    <li><a href="Booking.jsp">reservation</a></li>
                    <li><a href="Login.jsp">staff</a></li>
                    <li><a href="contact.jsp">contact</a></li>
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
<!----start-images-slider---->
<div class="images-slider">
    <!-- start slider -->
    <div id="fwslider">
        <div class="slider_container">
            <div class="slide">
                <!-- Slide image -->
                <img src="images/Rsingle_1.jpg" alt=""/>
                <!-- /Slide image -->
                <!-- Texts container -->
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <!-- Text title -->
                        <h4 class="title"><i class="bg"></i>Single Room<span class="hide"></span>
                        </h4>
                        <h5 class="title1"><i class="bg"></i>An art-deco<span class="hide">inspired design scheme</span>
                        </h5>
                        <!-- /Text title -->
                    </div>
                </div>
                <!-- /Texts container -->
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
                <img src="images/Rdouble.jpg" alt=""/>

                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <!-- Text title -->
                        <h4 class="title"><i class="bg"></i>Double Room<span class="hide"></span></h4>
                        <h5 class="title1"><i class="bg"></i>The perfect<span class="hide"> Los Angeles experience</span>
                        </h5>
                        <!-- /Text title -->
                    </div>
                </div>
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
                <img src="images/Rsuite.jpg" alt=""/>

                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <!-- Text title -->
                        <h4 class="title"><i class="bg"></i>Sunrise/Sunset<span class="hide"></span> Suite</h4>
                        <h5 class="title1"><i class="bg"></i>Sunrise/Sunset Suites<span class="hide"> offer stunning views</span>
                        </h5>
                        <!-- /Text title -->
                    </div>
                </div>
            </div>
            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span> </span></div>
        <div class="slideNext"><span> </span></div>
    </div>
    <!--/slider -->
</div>
<!--start main -->
<!-- this needs to search for available room through servlet -->
<div action="bookingServlet" method="POST" class="main_bg">
    <div class="wrap">
        <div class="online_reservation">
            <div class="b_room">
                <div class="booking_room">
                    <h4>RESERVE YOUR ROOM</h4>
                    <p>Check for available rooms in our most amazing 5 stars Hotel in Los Angeles</p>
                </div>
                <div class="reservation">
                    <ul>
                        <li class="span1_of_1">
                            <h5>type of room:</h5>
                            <!----------start section_room----------->
                            <div class="section_room">
                                <select id="TypeOfRoom" class="TypeOfRoom">
                                    <option value="null">Select a type of room</option>
                                    <option value="null">Single room</option>
                                    <option value="AX">Double room</option>
                                    <option value="AX">Suite room</option>
                                </select>
                            </div>
                        </li>
                        <li class="span1_of_1 left">
                            <h5>check-in-date:</h5>

                            <div class="book_date">
                                <form>
                                    <input class="date" id="checkin" type="text" value="DD/MM/YY"
                                           onfocus="this.value = '';"
                                           onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
                                </form>

                            </div>
                        </li>
                        <li class="span1_of_1 left">
                            <h5>check-out-date:</h5>

                            <div class="book_date">
                                <form>
                                    <input class="date" id="checkout" type="text" value="DD/MM/YY"
                                           onfocus="this.value = '';"
                                           onblur="if (this.value == '') {this.value = 'DD/MM/YY';}">
                                </form>
                            </div>
                        </li>
                        <li class="span1_of_2 left">
                            <h5>Adults:</h5>
                            <!----------start section_room----------->
                            <div class="section_room">
                                <select id="NumOfPeople" class="NumOfPeople">
                                    <option value="null">1</option>
                                    <option value="null">2</option>
                                    <option value="null">3</option>
                                    <option value="null">4</option>
                                    <option value="AX">5</option>
                                    <option value="AX">6</option>
                                </select>
                            </div>
                        </li>
                        <li class="span1_of_3">
                            <div class="date_btn">
                                <form>
                                    <input type="submit" value="Check Availability"/>
                                </form>
                            </div>
                        </li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!--start grids_of_3 -->
        <div class="grids_of_3">
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.jps">
                        <img src="images/Rsingle_4.jpg" alt=""/>
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">single room<span>$65</span></a></h4>

                <p>We know there's more to see in Los Angeles than your room, but that doesn't mean it can't feel like a
                    destination all its own. With sleek, modern furnishings, inspired artwork, and a color palette awash
                    in jewel tones, bronzes and charcoals, your accommodations are a great place to chill out and fuel
                    up for the next phase of the party.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.jps">
                        <img src="images/Rsingle_3.jpg" alt=""/>
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">double room<span>$100</span></a></h4>

                <p>Here's a wide open space built for celebration, large or small. Relax in your guestroom – or throw
                    the perfect soiree in the entertainment area. You'll be surrounded with rich and royal plum, mink
                    and cream – the perfect palette for a party where the energy of the room infuses the entire
                    experience.</p>
            </div>
            <div class="grid1_of_3">
                <div class="grid1_of_3_img">
                    <a href="details.jps">
                        <img src="images/Rsuite_3.jpg" alt=""/>
                        <span class="next"> </span>
                    </a>
                </div>
                <h4><a href="#">suite room<span>$120</span></a></h4>

                <p>Walk into 675 square feet of style – without sacrificing comfort. The colors are vibrant. The
                    furnishings are artfully modern. And the rich plums and minks are complemented with taupes and
                    creams. Together, the ambience and design create a space with an energy all its own. This room is
                    like that awesome friend you have who manages to be sophisticated without being snobby. </p>
            </div>
            <div class="clear"></div>
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
                    <li><a href="Login.jsp">Staff</a></li>
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
</body>
</html>