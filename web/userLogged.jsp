<%@ page import="Hotel.User" %>
<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/10/14
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang='en'>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Staff</title>
    <link rel="stylesheet" type="text/css" href="css/staff.css"/>
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
<table align="center">
    <%User currentUser = ((User) (session.getAttribute("currentSessionUser")));%>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><span style="font-size: large; "><b>Welcome</b></span></td>
        <td><span style="font-size: large; "><b><%=currentUser.getFirstname() + " " + currentUser.getLastname()%>
        </b></span></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<div class="header_bg">
    <div class="header">
        <div class="logo">
            <a href="index.jsp"><img src="images/Hotel_Logo.png" alt=""/></a>
        </div>
        <div class="h_right">
            <ul class="menu">
                <li><a href="index.jsp">hotel</a></li>
                <li><a href="Booking.jsp">reservation</a></li>
                <li class="active"><a href="Login.jsp">Staff</a></li>
                <li><a href="">check-In</a></li>
                <li><a href="">check-Out</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
