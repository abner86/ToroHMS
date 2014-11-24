<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/2/14
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang='en'>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Staff Login</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<!--JSP calls LoginServlet, which handles the user request for authentication -->
<form action="loginServlet" method="POST">
    <h1>Staff Login</h1>

    <div class="inset">
        <p>
            <label for="username">USERNAME</label>
            <input type="text" name="username" id="username">
        </p>

        <p>
            <label for="password">PASSWORD</label>
            <input type="password" name="password" id="password">
        </p>
    </div>
    <p class="p-container">
        <input type="submit" name="go" id="go" value="Login">
    </p>
</form>
</body>
</html>
