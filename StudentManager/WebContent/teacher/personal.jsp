<%@ page import="vo.Teacher" %>
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
    <title>Thông tin cá nhân</title>
    <link href="../resources/css/default.css" rel="stylesheet"/>
</head>
<body>
<%
    Teacher teacher = (Teacher) session.getAttribute("info");
%>
<div id="page" class="container">
    <div id="header">
        <div id="logo">
            <img src="../userImg/<%=teacher.getId()%>.jpeg"/>
            <h1><%=teacher.getId()%>
            </h1>
        </div>
        <div id="menu">
            <ul>
                <li class="current_page_item"><a href="personal.jsp">Thông tin cá nhân</a></li>
                <li><a href="../one_page_student">Quản lý sinh viên</a></li>
                <li><a href="../one_page_score">Quản lý điểm số</a></li>
                <li><a onclick="return confirm('Bạn có chắc muốn thoát?');" href="../exit">Đăng xuất</a></li>
            </ul>
        </div>
    </div>
    <div id="main">
        <div class="top">
            <h2>Thông tin tài khoản</h2>
            <hr/>
        </div>
        <div class="info">
            <img src="../userImg/<%=teacher.getId()%>.jpeg" class="personalImg"><br>
            <form action="../upload_teacherImg" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<%=teacher.getId()%>">
                <input type="file" name="img">
                <input type="submit" value="Sử dụng ảnh">
            </form>
            <form method="post" action="../update_teacher" class="personalForm">
                <input name="uid" value="<%=teacher.getId()%>" type="hidden">
                Họ tên: <input type="text" name="name" value="<%=teacher.getName()%>" class="personalInput"><br>
             	Giới tính: <input type="text" name="sex" value="<%=teacher.getSex()%>" class="personalInput"><br>
                Email: <input type="text" name="email" value="<%=teacher.getEmail()%>" class="personalInput"><br>
              	Mật khẩu: <input type="password" name="password" value="<%=teacher.getPassword()%>" class="personalInput"><br>
                <input type="submit" value="Cập nhật" style="width: 100px; height: 30px; margin-top: 20px">
            </form>
        </div>
    </div>
</div>
</body>
</html>

