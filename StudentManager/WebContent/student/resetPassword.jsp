<%--
  Created by IntelliJ IDEA.
  User: 007
  Date: 2018/11/28
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đặt lại mật khẩu</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link href="../resources/css/forget.css" type="text/css" rel="stylesheet" />
</head>
<body>
<h1 style="margin: 50px 80px; color: darkgray; font-family: cursive;">Hệ thống quản lý giáo dục</h1>
<%
    String id = request.getParameter("id");
    String email = request.getParameter("email");
    String reset = request.getParameter("reset");
    String code = (String) session.getAttribute("reset");
    if (!reset.equals(code)){
%>
    <script>alert("Lỗi mã code!");window.location.href='../forget.jsp';</script>
<%
    }
    else {
%>
    <div class="main">
        <form role="form" action="../update_student_security" method="post">
            <div class="form-group" align="center">
                <input class="form-control" type="text" name="password" placeholder="Mật khẩu mới"><br>
                <input type="hidden" name="id" value="<%=id%>">
                <input type="hidden" name="email" value="<%=email%>">
                <input type="submit" class="btn btn-success" value="Xác nhận">
                <input type="button" class="btn btn-info" value="Hủy bỏ" style="margin-left: 20px" onclick="window.location.href='../login.jsp'">
            </div>
        </form>
    </div>
<%
    }
%>
<script src="../resources/js/jquery-3.2.1.min.js"></script>
<script src="../resources/js/popper.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>
