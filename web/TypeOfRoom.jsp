<%--
  Created by IntelliJ IDEA.
  User: abner
  Date: 11/7/14
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jquery select/Type of Room</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
</head>
<body>
<script type="text/javascript" class="RoomType" name="RoomType">
    $(document).ready(function () {
        $("#isSelect").click(function () {
            alert($('#roon').val());
        });
        $("#single").click(function () {
            $("#room").val("single");
        });
        $("#double").click(function () {
            $("#room").val("double");
        });
        $("#Suite").click(function () {
            $("#room").val("suite");
        });
    })
</script>
<select id="room">
    <option value="None">-- Select --</option>
    <option value="single">Single</option>
    <option value="double">Double</option>
    <option value="suite">Suite</option>
</select>
</body>
</html>
