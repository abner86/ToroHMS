<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/2/14
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Staff Login</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<form>
    <h1>Staff Login</h1>

    <div class="inset">
        <p>
            <label for="username">USERNAME</label>
            <input type="text" name="username" id="email">
        </p>

        <p>
            <label for="password">PASSWORD</label>
            <input type="password" name="password" id="password">
        </p>
    </div>
    <p class="p-container">
        <span>Forgot Password</span>
        <input type="submit" name="go" id="go" value="Login">
    </p>
</form>
</body>
</html>
