<%--
  Created by IntelliJ IDEA.
  User: 007
  Date: 2018/11/28
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lấy lại mật khẩu</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link href="resources/css/forget.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<h1 style="margin: 50px 80px; color: darkgray; font-family: cursive;">Hệ thống quản lý giáo dục</h1>
<div class="main">
    <form role="form" action="sendCode.jsp" method="post">
        <div class="form-group" align="center">
            <input class="form-control" type="text" name="user" placeholder="Mã giáo viên | Mã sinh viên"><br>
            <input type="submit" class="btn btn-success" value="Tiếp tục">
            <input type="button"  class="btn btn-info" value="Hủy bỏ" style="margin-left: 20px" onclick="window.location.href='login.jsp'">
        </div>
    </form>
</div>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
