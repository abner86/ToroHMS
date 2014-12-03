<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/20/14
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang='en'>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Booking</title>
    <link rel="stylesheet" type="text/css" href="css/form_style.css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link type="text/css" rel="stylesheet" href="css/jquery-ui.css"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script type="text/javascript" src="Scripts/bookingForm.js"></script>
    <script>
        //calendar scrip
        $(function () {
            $("#checkin").datepicker();
        });
        $(function () {
            $("#checkout").datepicker();
        });
    </script>
</head>
<body>
<!--this is a multistep form for reserving a room -->
<form action="bookingServlet" method="POST" id="msform">
    <!-- progressbar -->
    <ul id="progress_bar">
        <li class="active">Contact Information</li>
        <li>Address</li>
        <li>Booking</li>
        <li>Payment</li>
        <li>Review</li>
    </ul>
    <!-- fieldset --->
    <fieldset id="form1" class="form">
        <h2 class="title"><span>Toro Hotel</span> Reservation</h2>
        <input type="text" name="FirstName" id="FirstName" placeholder="First Name"/>
        <input type="text" name="LastName" id="LastName" placeholder="Last Name"/>
        <input type="text" name="phone" id="phone" placeholder="Phone"/>
        <input type="text" name="email" id="email" placeholder="Email"/>
        <input type="button" name="next" class="next action-button" value="Next"/>
    </fieldset>
    <fieldset id="form2" class="form">
        <h2 class="title">Address</h2>
        <input type="text" name="StreetAddress" id="StreetAddress" placeholder="Street Address"/>
        <input type="text" style="width:190px;" name="City" id="City" placeholder="City"/>
        <input type="text" style="width:95px;" name="state" id="state" placeholder="State"/>
        <input type="text" style="width:95px;" name="zip" id="zip" placeholder="ZipCode"/>
        <br/>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="button" name="next" class="next action-button" value="Next"/>
    </fieldset>
    <fieldset id="form3" class="form">
        <h2 class="title">Reservation</h2>
        <input type="text" style="width:110px;" name="checkin" id="checkin" placeholder="CheckIn"/>
        <input type="text" style="width:110px;" name="checkout" id="checkout" placeholder="CheckOut"/>
        <br/>
        <label for="RoomType">Room Type</label><!-- clearfix--><div class="clear"></div><!---/clearfix --->
        <select id="RoomType" style="width:95px;" name="RoomType">
            <option value="single">Single</option>
            <option value="double">Double</option>
            <option value="suite">Suite</option>
        </select>
        <br/>
        <label for="NumOfPeople">Adults (18+)</label><!-- clearfix--><div class="clear"></div><!---/clearfix --->
        <select id="NumOfPeople" style="width:95px;" name="NumOfPeople">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
        </select>
        <br/>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="button" name="next" class="next action-button" value="Next"/>
    </fieldset>
    <fieldset id="form4" class="form">
        <h2 class="title">Payment Information</h2>
        <input type="text" name="CreditCard" id="CreditCard" placeholder="Credit Card Number"/>
        <input type="text" name="Expiration" id="Expiration" placeholder="expiration"/>
        <input type="text" name="SecurityCode" id="SecurityCode" placeholder="Security Code"/>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="button" name="next" class="next action-button" value="next"/>
    </fieldset>
    <fieldset id="form5" class="form">
        <h2 class="title">Review</h2>
        <table>
            <tr><td>Name</td><td></td></tr>
            <tr><td>Phone</td><td></td></tr>
            <tr><td>Email</td><td></td></tr>
            <tr><td>Street Address</td><td></td></tr>
            <tr><td>City</td><td></td></tr>
            <tr><td>State</td><td></td></tr>
            <tr><td>Zip</td><td></td></tr>
            <tr><td>Check In</td><td></td></tr>
            <tr><td>Check Out</td><td></td></tr>
            <tr><td>Room Type</td><td></td></tr>
            <tr><td>Number of Adults</td><td></td></tr>
        </table>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="submit" name="submit" id="submit" class="submit action-button" value="Submit"/>
    </fieldset>
</form>
</body>
</html>