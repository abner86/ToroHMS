<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/2/14
  Time: 6:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*" %>
<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8">
    <title>Toro Hotel</title>
</head>
<body>
<%!
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if((username.equals("Abner")&&password.equals("hello")))

    {
        session.setAttribute("username", username);
        response.sendRedirect("Home.jsp");
    }

    else

    {
        response.sendRedirect("Error.jsp");
    }
%>
</body>
</html>
