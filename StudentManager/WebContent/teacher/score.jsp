<%@ page import="vo.Teacher" %>
<%@ page import="vo.Score" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.StudentD" %>
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
    <title>Quản lý điểm số</title>
    <link href="../resources/css/default.css" rel="stylesheet"/>
</head>
<body>
<%
    Teacher teacher = (Teacher) session.getAttribute("info");
    ArrayList<Score> stus = (ArrayList<Score>) session.getAttribute("onePageScore");
    int sumIndex = (int) session.getAttribute("sumScoreIndex");
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
                <li><a href="../one_page_student">Quản lý sinh viên</a></li>
                <li class="current_page_item"><a href="../one_page_score">Quản lý điểm số</a></li>
                <li><a onclick="return confirm('Bạn có chắc muốn thoát?');" href="../exit">Đăng xuất</a></li>
            </ul>
        </div>
    </div>
    <div id="main">
        <div class="top">
            <h2>Danh sách điểm số</h2>
            <hr/>
        </div>
        <form method="post" action="../update_score" style="height: 525px; margin-top: 20px">
            <input type="button" class="btn-add" onclick="location.href='score_excel.jsp';" value="Xuất EXCEL">
            <input type="submit" class="btn-add" style="float: right;margin-bottom: 30px" value="Cập nhật">
            <div class="table" style="margin-top: 20px; height: 525px">
                <table id="table" width="800" frame="box" align="center">
                    <tr>
                        <th height="35">Mã sinh viên</th>
                        <th>Họ tên</th>
                        <th>Chuyên ngành</th>
                        <th>CSDL</th>
                        <th>Android</th>
                        <th>JavaWeb</th>
                    </tr>
                    <%
                        try {
                            StudentD stuD = new StudentD();
                            for (Score stu : stus) {
                                String name = stuD.findWithId(stu.getId()).getName();
                                String major = stuD.findWithId(stu.getId()).getMajor();
                    %>
                    <tr>
                        <td height="35"><%=stu.getId()%></td>
                        <td><%=name%></td>
                        <td><%=major%></td>
                        <td><input value="<%=stu.getDatabase()%>" name="database" class="table-input"></td>
                        <td><input value="<%=stu.getAndroid()%>" name="android" class="table-input"></td>
                        <td><input value="<%=stu.getJsp()%>" name="jsp" class="table-input"></td>
                        <input value="<%=stu.getId()%>" name="id" type="hidden">
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </table>

            </div>
        </form>

        <%
            if (sumIndex > 1){
        %>
                <div id="index">
                    <a href="../one_page_score?index=1">Trang chủ</a>
                    <%
                        for (int i = 1; i <= sumIndex; i++) {
                    %>
                    <a href="../one_page_score?index=<%=i%>">Trang đầu<%=i%>trang</a>
                    <%
                        }
                    %>
                    <a href="../one_page_score?index=<%=sumIndex%>">Trang cuối</a>
                </div>
        <%
            }
        %>
    </div>
</div>
</body>
</html>

