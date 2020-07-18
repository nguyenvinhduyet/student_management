<%@ page import="dao.StudentD" %>
<%@ page import="vo.Student" %>
<%@ page import="dao.ScoreD" %>
<%@ page import="vo.Score" %>
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
                <li><a href="personal.jsp">Thông tin sinh viên</a></li>
                <li class="current_page_item"><a href="main.jsp">Kết quả</a></li>
                <li><a onclick="return confirm('Xác nhận đăng xuất');" href="../exit">Đăng xuất</a></li>
            </ul>
        </div>
    </div>
    <div id="main">
        <div class="top">
            <h2>Kết quả</h2>
            <hr/>
        </div>
        <div class="table">
            <table width="800" frame="box" align="center">
                <tr>
                    <th height="35">Mã sinh viên</th>
                    <th>Họ tên</th>
                    <th>Chuyên ngành</th>
                    <th>Điểm CSDL</th>
                    <th>Điểm Android</th>
                    <th>Điểm JavaWeb</th>
                    <th>Tùy chọn</th>
                </tr>
                <%
                    try {
                        ScoreD scoD = new ScoreD();
                        StudentD stuD = new StudentD();
                        Score stu = scoD.findWithId(student.getId());
                        String name = stuD.findWithId(student.getId()).getName();
                        String major = stuD.findWithId(student.getId()).getMajor();
                %>
                <tr>
                    <td height="35"><%=stu.getId()%></td>
                    <td><%=name%></td>
                    <td><%=major%></td>
                    <td><%=stu.getDatabase()%></td>
                    <td><%=stu.getAndroid()%></td>
                    <td><%=stu.getJsp()%></td>
                    <td><a href="pdf.jsp?id=<%=stu.getId()%>&name=<%=name%>&major=<%=major%>&database=<%=stu.getDatabase()%>&android=<%=stu.getAndroid()%>&jsp=<%=stu.getJsp()%>">PDF</a></td>
                </tr>
                <%
                    }
                    catch (Exception e){
                        out.print(e);
                    }
                %>
            </table>
        </div>
    </div>
</div>
</body>
</html>

