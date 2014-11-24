<%--
  Created by IntelliJ IDEA.
  User: abner benavides
  Date: 11/1/14
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=utf-8"/>
    <title>Hotel Toro</title>
    <meta name="keywords" content="hotel, travel, cheap, Hotel in Los Angeles"/>
    <meta name="description" content="Hotel"/>
    <link href="css/toro_style.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<div id="toro_container">
    <div id="toro_header">
        <div id="website_title">
            <div id="title">
                Hotel Toro
            </div>
            <div id="bottomTitle">
                The best service at the lowest price
            </div>
        </div>
    </div>
    <!--end of header -->
    <div id="toro_banner">
        <div id="toro_menu">
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="Booking.jsp">Booking</a></li>
                <li><a href="index.jsp">Gallery</a></li>
                <li><a href="Login.jsp">Staff Login</a></li>
                <li><a href="index.jsp" class="last">Contact</a></li>
            </ul>
        </div>
    </div>
    <!-- end of banner -->
    <div id="toro_content">
        <div id="content_left">
            <div class="content_left_section">
                <div class="content_title_1">Booking</div>
                <form method="get" action="#">
                    <div class="form_row">
                        <!-- Javascript Calendar (check-in and check-out goes here-->
                        <jsp:include page="Calendar.jsp"/>
                    </div>
                    <div class="form_row">
                        <jsp:include page="NumOfPeople.jsp"/>
                        <br/>
                        <br/>
                        <label>Rooms:</label>
                        <jsp:include page="TypeOfRoom.jsp"/>
                    </div>
                    <div class="cleaner_h20">&nbsp;</div>
                    <div class="rc_btn_1"><a href="#">Check Availability</a></div>
                </form>
                <div class="cleaner">&nbsp;</div>
            </div>
            <!-- end of booking -->

            <div class="cleaner_h30">&nbsp;</div>
            <div class="cleaner_horizontal_divider_1">&nbsp;</div>
            <div class="cleaner_h30">&nbsp;</div>
        </div>
        <!-- end of content left -->
        <div class="cleaner_h30">&nbsp;</div>
    </div>
    <div id="toro_footer">
        Copyright © 2014 <a href="#"><strong>Toro Hotel</strong></a>

        <div style="clear: both; margin-top: 10px;"></div>
    </div>
    <!--end of footer -->
</div>
<%--<jsp:include page="Login.jsp"/> --%>
</body>
</html>