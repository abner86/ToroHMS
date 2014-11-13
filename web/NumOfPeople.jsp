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
    <title>Jquery select/Number of People</title>
    <script type="text/javascript" src="jquery-2.0.0.min.js"></script>
</head>
<body>
<script type="text/javascript">
    $(document).ready(function () {
        $("#isSelect").click(function () {
            alert($('#person').val());
        });
        $("#Select1").click(function () {
            $("#person").val("1");
        });
        $("#Select2").click(function () {
            $("#person").val("2");
        });
        $("#Select3").click(function () {
            $("#person").val("3");
        });
        $("#Select4").click(function () {
            $("#person").val("4");
        });

        $("#Select5").click(function () {
            $("#person").val("5");
        });

        $("#Select6").click(function () {
            $("#person").val("6");
        });

        $("#Select7").click(function () {
            $("#person").val("7");
        });

        $("#Select8").click(function () {
            $("#person").val("8");
        });

        $("#Select9").click(function () {
            $("#person").val("8");
        });
    })
</script>
<select id="person">
    <option value="None">-- Select --</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
</select>
</body>
</html>
