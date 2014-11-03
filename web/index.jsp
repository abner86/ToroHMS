<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/1/14
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=utf-8"/>
    <title>Hotel Toro</title>
    <meta name="keywords" content="hotel, travel, cheap, Hotel in Los Angeles"/>
    <meta name="description" content="Hotel"/>
    <link href="toro_style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="toro_container">
    <div id="toro_header">
        <div id="website_title">
            <div id="title">
                Hotel Toro
            </div>
            <div id="salgon">
                The best service at the lowest price
            </div>
        </div>
    </div>
    <!--end of header -->
    <div id="toro_banner">
        <div id="toro_menu">
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="index.jsp">Booking</a></li>
                <li><a href="index.jsp">Gallery</a></li>
                <li><a href="index.jsp">Staff Login</a></li>
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
                        <label>Check-in</label>
                        <select name="day">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                        </select>
                        <select name="month">
                            <option>Jan</option>
                            <option>Feb</option>
                            <option>Mar</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>Aug</option>
                            <option>Sep</option>
                            <option>Oct</option>
                            <option>Nov</option>
                            <option>Dec</option>
                        </select>
                        <select name="year">
                            <option>2010</option>
                            <option>2011</option>
                            <option>2012</option>
                            <option>2013</option>
                            <option>2014</option>
                            <option>2015</option>
                            <option>2016</option>
                            <option>2017</option>
                            <option>2018</option>
                            <option>2019</option>
                            <option>2020</option>
                            <option>2021</option>
                            <option>2022</option>
                            <option>2013</option>
                            <option>2024</option>
                        </select>
                    </div>
                    <div class="form_row">
                        <label>Check-out</label>
                        <select name="day">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                        </select>
                        <select name="month">
                            <option>Jan</option>
                            <option>Feb</option>
                            <option>Mar</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>Aug</option>
                            <option>Sep</option>
                            <option>Oct</option>
                            <option>Nov</option>
                            <option>Dec</option>
                        </select>
                        <select name="year">
                            <option>2010</option>
                            <option>2011</option>
                            <option>2012</option>
                            <option>2013</option>
                            <option>2014</option>
                            <option>2015</option>
                            <option>2016</option>
                            <option>2017</option>
                            <option>2018</option>
                            <option>2019</option>
                            <option>2020</option>
                            <option>2021</option>
                            <option>2022</option>
                            <option>2013</option>
                            <option>2024</option>
                        </select>
                    </div>
                    <div class="form_row">
                        <label>Persons:</label>
                        <input class="inputfield" name="person" type="text" style="width:30px; margin-right: 20px;"/>
                        <label>Rooms:</label>
                        <input class="inputfield" name="person" type="text" style="width: 30px;"/>
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