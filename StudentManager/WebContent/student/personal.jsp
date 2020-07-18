<%@ page import="vo.Student" %>
<%--
  Created by IntelliJ IDEA.
  User: 007
  Date: 2018/11/1
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>main</title>
    <link rel="stylesheet" href="../resources/css/jquery-ui-1.10.4.custom.min.css">
    <script src="../resources/js/jquery-1.10.2.js"></script>
    <script src="../resources/js/jquery-ui-1.10.4.custom.min.js"></script>
    <link href="../resources/css/default.css" rel="stylesheet"/>
</head>
<body>
<%
    Student student = (Student) session.getAttribute("info");
%>
<div id="page" class="container">
    <div id="header">
        <div id="logo">
            <img src="../userImg/<%=student.getId()%>.jpeg"/>
            <h1><%=student.getName()%></h1>
        </div>
        <div id="menu">
            <ul>
                <li class="current_page_item"><a href="personal.jsp">Thông tin sinh viên</a></li>
                <li><a href="main.jsp">Kết quả</a></li>
                <li><a onclick="return confirm('Xác nhận đăng xuất');" href="../exit">Đăng xuất</a></li>
            </ul>
        </div>
    </div>
    <div id="main">
        <div class="top">
            <h2>Thông tin cá nhân</h2>
            <hr/>
        </div>
        <div class="info">
            <img src="../userImg/<%=student.getId()%>.jpeg" class="personalImg"><br>
            <form action="../upload_studentImg" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<%=student.getId()%>">
                <input type="file" name="img">
                <input type="submit" value="Tải ảnh">
            </form>

            <form action="../update_student_email" method="post">
            <table width="400" frame="box" align="center" style="margin-top: 30px;">
                <tr>
                    <td style="font-size: 25px;font-weight: bold">Mã sinh viên</td>
                    <td style="font-size: 25px;font-weight: bold"><%=student.getId()%></td>
                </tr>
                <tr>
                    <td style="font-size: 25px;font-weight: bold">Họ tên</td>
                    <td style="font-size: 25px;font-weight: bold"><%=student.getName()%></td>
                </tr>
                <tr>
                    <td style="font-size: 25px;font-weight: bold">Giới tính</td>
                    <td style="font-size: 25px;font-weight: bold"><%=student.getSex()%></td>
                </tr>
                <tr>
                    <td style="font-size: 25px;font-weight: bold">Chuyên ngành</td>
                    <td style="font-size: 25px;font-weight: bold"><%=student.getMajor()%></td>
                </tr>
            </table>
            </form>
            <button class="password-btn" style="margin-top: 30px; height: 40px">Đổi mật khẩu</button>
        </div>
    </div>
</div>

<%--Thay đổi mật khẩu sinh viên--%>
<div id="password-dialog" title="Đổi mật khẩu">
    <form id="password-form" method="post">
        <input type="hidden" name="id" value="<%=student.getId()%>">
        Email: &nbsp;&nbsp;<input type="email" name="email" value="<%=student.getEmail()%>"><br><br>
        Mật khẩu mới:<input type="password" name="password"><br>
        <hr>
        <input style="float: right" type="submit" value="Hủy bỏ" onclick="function x() {
          $('#add-dialog').dialog('close');
        }">
        <input style="float: right; margin-right: 25px" type="submit" value="Xác nhận"
               onclick="this.form.action='../update_student_security'">
    </form>
</div>

<script>
    $('#password-dialog').dialog({
        width: 340,
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false
    });
    $('.password-btn').click(function () {
        $('#password-dialog').dialog('open');
    });
</script>

<style>
    .ui-dialog-titlebar-close {
        display: none
    }
</style>
</body>
</html>

