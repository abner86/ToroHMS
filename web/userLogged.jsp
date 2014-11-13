<%@ page import="Hotel.User" %>
<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/10/14
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> User Logged Successfully</title>>
</head>
<body>
<table align="center">
    <%User currentUser = ((User) (session.getAttribute("currentSessionUser")));%>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><span style="font-size: small; "><b>Welcome</b></span></td>
        <td><span style="font-size: small; "><b><%=currentUser.getFirstname() + " " + currentUser.getLastname()%>
        </b></span></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</body>
</html>
