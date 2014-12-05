<%@ page import="Hotel.User" %>
<%@ page import="Database_Connection.ConnectionManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/10/14
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- This jsp is for staff after login in-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang='en'>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Staff</title>
    <link rel="stylesheet" type="text/css" href="css/staff.css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link type="text/css" rel="stylesheet" href="External_Lib/jquery-ui.css"/>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script type="text/javascript" src="Scripts/bookingForm.js"></script>
    <script type="text/javascript">
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
    <div class="main_bg">
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
    <%
        Connection connection = ConnectionManager.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from Customer");
    %>
    <form id="tform">
        <table border=".2">
            <h3 class="title"><span>Customers</span> Reservation</h2>
            <tr>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Zip</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Check-In</th>
                <th>Check-Out</th>
                <th>Room</th>
                <th>Adults</th>
            </tr>
            <% while (resultSet.next()) { %>
            <tr>
                <td><%= resultSet.getString(1)%>
                </td>
                <td><%= resultSet.getString(2)%>
                </td>
                <td><%= resultSet.getString(3)%>
                </td>
                <td><%= resultSet.getString(4)%>
                </td>
                <td><%= resultSet.getString(5)%>
                </td>
                <td><%= resultSet.getString(6)%>
                </td>
                <td><%= resultSet.getString(7)%>
                </td>
                <td><%= resultSet.getString(8)%>
                </td>
                <td><%= resultSet.getString(9)%>
                </td>
                <td><%= resultSet.getString(10)%>
                </td>
                <td><%= resultSet.getString(11)%>
                </td>
                <td><%= resultSet.getString(12)%>
                </td>
            </tr>
            <% }%>
        </table>
    </form>
</body>
</html>
