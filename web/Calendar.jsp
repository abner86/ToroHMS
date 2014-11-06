<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/6/14
  Time: 2:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <!-- Javascript -->
    <script>
        $(function () {
            $("#datepicker-8").datepicker({
                prevText: "click for previous months",
                nextText: "click for next months",
                showOtherMonths: true,
                selectOtherMonths: false
            });
            $("#datepicker-9").datepicker({
                prevText: "click for previous months",
                nextText: "click for next months",
                showOtherMonths: true,
                selectOtherMonths: true
            });
        });
    </script>
</head>
<body>
<!-- HTML -->
<p>Check In: <input type="text" id="datepicker-8"></p>

<p>Check Out: <input type="text" id="datepicker-9"></p>
</body>
</html>
