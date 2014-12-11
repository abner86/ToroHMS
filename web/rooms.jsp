<!DOCTYPE HTML>
<html>
<head>
    <title>Rooms</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/toro_style.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <link type="text/css" rel="stylesheet" href="External_Lib/JFGrid.css"/>
    <link type="text/css" rel="stylesheet" href="External_Lib/JFFormStyle-1.css"/>
    <script type="text/javascript" src="External_Lib/JFCore.js"></script>
    <script type="text/javascript" src="External_Lib/JFForms.js"></script>
    <script type="text/javascript">
        (function () {
            JC.init({
                domainKey: ''
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
                    <li><a href="index.jsp">hotel</a></li>
                    <li class="active"><a href="rooms.jsp">rooms</a></li>
                    <li><a href="Booking.jsp">reservation</a></li>
                    <li><a href="contact.jsp">contact</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="top-nav">
                <nav class="clearfix">
                    <ul>
                        <li class="active"><a href="index.jsp">hotel</a></li>
                        <li><a href="rooms.jsp">rooms</a></li>
                        <li><a href="Booking.jsp">reservation</a></li>
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
            <div class="content">
                <div class="room">
                    <h4>Suites & Rooms</h4>

                    <p class="para">Luxury accommodation: individual, elegant and refined, our rooms offer the ultimate
                        in comfort and luxury in Los Angeles. The hotel's turn-of-the-century origins are evident in the
                        subdued colors, discreet patterns, rich fabrics, and classic paintings and prints. Ideal for
                        business or leisure, the hotel offers High Speed Internet Access and smartly designed work areas
                        in each guest room. Slip into your plush slippers and robe after a long day, and experience the
                        finest luxury Dodger's town has to offer.</p>
                </div>
                <div class="grids_of_2">
                    <div class="grids_of_img">
                        <img src="images/single2.jpg" alt=""/>
                    </div>
                    <div class="grids_of_para">
                        <h4>Single Rooms</h4>

                        <p class="para">
                            Stay and relax in our modern Double Rooms with en suite bathroom. All Double Rooms have
                            integral desks for ease of work with free wireless internet access. Relax in the comfortable
                            easy-chairs and watch one of the many Freeview channels on your 32 inch wall-mounted flat
                            screen
                            TV. Each Double Room is equipped with tea and coffee-making facilities, iron and ironing
                            board, luxury bathroom toiletries, direct dial telephone and hairdryer</p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="grids_of_2">
                    <div class="grids_of_img">
                        <img src="images/Rsuite_3.jpg" alt=""/>
                    </div>
                    <div class="grids_of_para">
                        <h4>Double Rooms</h4>

                        <p class="para">Stay and relax in our modern Double Rooms with en suite bathroom. All Double
                            Rooms have integral desks for ease of work with free wireless internet access. Relax in the
                            comfortable easy-chairs and watch one of the many Freeview channels on your 32" wall-mounted
                            flat screen TV. Each Double Room is equipped with tea and coffee-making facilities, iron and
                            ironing board, luxury bathroom toiletries, direct dial telephone and hairdryer.</p>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="grids_of_2">
                    <div class="grids_of_img">
                        <img src="images/Rsuite_2.jpg" alt=""/>
                    </div>
                    <div class="grids_of_para">
                        <h4>Suite Rooms</h4>

                        <p class="para">Unwind after important meetings or plan the day ahead in a spacious Suite
                            Room at Toro Hotel. All Suite Rooms have an integral desk for ease of work, free
                            wireless internet access, and are decorated with plush fabrics and neutral tones. Each
                            Suite Room is equipped with a 32" wall-mounted flat screen TV, with Freeview channels,
                            tea and coffee making facilities, iron and ironing board, luxury bathroom toiletries, linen
                            bathrobe, mineral water, newspaper, direct dial telephone and hairdryer.</p>
                    </div>
                    <div class="clear"></div>
                </div>

            </div>
            <div class="sidebar">
                <div class="date_btn">
                    <form action="Booking.jsp">
                        <input type="submit" value="book now" style="width: 82px;">
                    </form>
                </div>
                <h4>room features</h4>
                <ul class="s_nav">
                    <li><a href="#">laptop-size safe</a></li>
                    <li><a href="#">32 inch LCD flat screen TV with satellite and Pay TV </a></li>
                    <li><a href="#">King size bed, queen size bed or twin beds, rollaway also available</a></li>
                    <li><a href="#">Desk with lamp</a></li>
                    <li><a href="#">Wi-Fi</a></li>
                    <li><a href="#">Street, city or courtyard view, some rooms with balconies</a></li>
                </ul>
                <h4>we accept</h4>
                <ul class="s_nav1">
                    <li><a class="icon1" href="#"></a></li>
                    <li><a class="icon2" href="#"></a></li>
                    <li><a class="icon3" href="#"></a></li>
                    <li><a class="icon4" href="#"></a></li>
                </ul>
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