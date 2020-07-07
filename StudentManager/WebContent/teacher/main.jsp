<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.Student" %>
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
    <link rel="stylesheet" href="../resources/css/jquery-ui-1.10.4.custom.min.css">
    <script src="../resources/js/jquery-1.10.2.js"></script>
    <script src="../resources/js/jquery-ui-1.10.4.custom.min.js"></script>
    <title>Quản lý sinh viên</title>
    <link href="../resources/css/default.css" rel="stylesheet"/>
</head>
<body>
<%
    Teacher teacher = (Teacher) session.getAttribute("info");
    ArrayList<Student> stus = (ArrayList<Student>) session.getAttribute("onePageStudent");
    int sumIndex = (int) session.getAttribute("sumIndex");
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
                <li><a href="personal.jsp">Thông tin cá nhân</a></li>
                <li class="current_page_item"><a href="../one_page_student">Quản lý sinh viên</a></li>
                <li><a href="../one_page_score">Quản lý điểm số</a></li>
                <li><a onclick="return confirm('Bạn có chắc muốn thoát?');" href="../exit">Đăng xuất</a></li>
            </ul>
        </div>
    </div>
    <div id="main">
        <div class="top">
            <h2>Thông tin danh sách sinh viên</h2>
            <hr/>
            <button class="btn-add">Thêm học sinh</button>
            <div class="find">
                <form action="../one_page_student" method="post">
                    <input id="find-text" type="text" name="key" placeholder="Nhập ID hoặc tên sinh viên">
                    <input class="find-btn" type="submit" value="Tìm kiếm">
                </form>
            </div>
        </div>
        <div class="table">
            <table id="table" width="800" frame="box" align="center">
                <tr>
                    <th height="35">Mã sinh viên</th>
                    <th>Họ tên</th>
                    <th>Giới tính</th>
                    <th>Ngày nhập học</th>
                    <th>Chuyên ngành</th>
                    <th>Tùy chọn</th>
                </tr>
                <%
                    for (Student stu : stus) {
                %>
                        <tr>
                            <form method="post" action="../update_student">
                                <td height="35"><%=stu.getId()%></td>
                                <td><input value="<%=stu.getName()%>" name="stuname" class="table-input"></td>
                                <td><input value="<%=stu.getSex()%>" name="stusex" class="table-input"></td>
                                <td><%=stu.getSchool_date()%></td>
                                <td><input value="<%=stu.getMajor()%>" name="stumajor" class="table-input" style="width: 110px"></td>
                                <input value="<%=stu.getId()%>" name="stuno" type="hidden">
                                <td><input type="submit" class="update-btn" value="Sửa">&nbsp;<a class="btn-delete"
                                                                                           onclick="return confirm('Bạn có chắc muốn xóa không?');"
                                                                                           href=<%="'../delete_student?id=" + stu.getId() + "'"%>>Xóa</a>&nbsp;&nbsp;<a href="../one_page_score?id=<%=stu.getId()%>">Xem kết quả</a>
                                </td>
                            </form>
                        </tr>
                <%
                    }
                %>
            </table>
        </div>
        <%
            if (sumIndex > 1){
        %>
                <div id="index">
                    <a href="../one_page_student?index=1">首页</a>
                    <%
                        for (int i=1; i<=sumIndex; i++){
                    %>
                            <a href="../one_page_student?index=<%=i%>">Đầu tiên<%=i%>Trang</a>
                    <%
                        }
                    %>
                    <a href="../one_page_student?index=<%=sumIndex%>">Cuối cùng</a>
                </div>
        <%
            }
        %>
    </div>
</div>

<%--Thêm hộp thoại Thêm sinh viên mới--%>
<div id="add-dialog" title="Thêm sinh viên">
    <form id="add-form" method="post">
        Mã sinh viên:<input name="id" type="text"><br>
        Tên sinh viên:<input name="name" type="text"><br>
        Giới tính:<input name="sex" type="text"><br>
        Chuyên ngành:<input name="major" type="text"><br>
        Ngày nhập học:<input name="school_date" type="month" style="width: 190px">
        <hr>
        <input style="float: right" type="submit" value="Hủy bỏ" onclick="function x() {
          $('#add-dialog').dialog('close');
        }">
        <input style="float: right; margin-right: 25px" type="submit" value="Xác nhận"
               onclick="this.form.action='../add_student'">
    </form>
</div>

<style>
    .ui-dialog-titlebar-close {
        display: none
    }
</style>

<script>
    $('#add-dialog').dialog({
        width: 310,
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false
    });
    $('.btn-add').click(function () {
        $('#add-dialog').dialog('open');
    });
</script>
</body>
</html>

