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
    <title>Jquery UI Select Menu</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-2.0.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <%--    <link rel="stylesheet" href="/resources/demos/style.css">--%>
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
<select name="person" id="person">
<option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
</select>
<label for="person">Select number of People:</label>
</body>
</html>
