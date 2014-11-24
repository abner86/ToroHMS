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
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script type="text/javascript" src="Scripts/bookingForm.js"></script>
    <script>
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
<form action="BookingServlet" method="POST" id="msform">
    <!-- progressbar -->
    <ul id="progress_bar">
        <li class="active">Contact Information</li>
        <li>Address</li>
        <li>Booking</li>
        <li>Payment</li>
    </ul>
    <!-- fieldset --->
    <fieldset>
        <h2 class="title"><span>Toro Hotel</span> Reservation</h2>
        <input type="text" name="FirstName" placeholder="First Name"/>
        <input type="text" name="LastName" placeholder="Last Name"/>
        <input type="text" name="phone" placeholder="Phone"/>
        <input type="text" name="email" placeholder="Email"/>
        <input type="button" name="next" class="next action-button" value="Next"/>
    </fieldset>
    <fieldset>
        <h2 class="title">Address</h2>
        <input type="text" name="StreetAddress" placeholder="Street Address"/>
        <input type="text" name="City" placeholder="City"/>
        <input type="text" name="state" placeholder="State"/>
        <input type="text" name="zip" placeholder="ZipCode"/>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="button" name="next" class="next action-button" value="Next"/>
    </fieldset>
    <fieldset>
        <h2 class="title">Reservation</h2>
        <input type="text" style="width:110px;" id="checkin" placeholder="CheckIn"/>
        <input type="text" style="width:110px;" id="checkout" placeholder="CheckOut"/>
        <jsp:include page="NumOfPeople.jsp"/>
        <jsp:include page="TypeOfRoom.jsp"/>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="button" name="next" class="next action-button" value="Next"/>
    </fieldset>
    <fieldset>
        <h2 class="title">Payment Information</h2>
        <input type="text" name="CreditCard" placeholder="Credit Card Number"/>
        <input type="text" name="Expiration" placeholder="expiration"/>
        <input type="text" name="SecurityCode" placeholder="Security Code"/>
        <input type="button" name="previous" class="previous action-button" value="Previous"/>
        <input type="button" name="submit" class="submit action-button" value="submit"/>
    </fieldset>
</form>
</body>
</html>