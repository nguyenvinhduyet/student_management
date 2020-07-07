<%@ page import="dao.ScoreD" %>
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
<%@ page contentType="application/msexcel" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang in Excel</title>
</head>
<body>
<%
    out.clearBuffer();
    response.setHeader("Content-Disposition", "attachment;filename=excel.xls");
%>
<table align="center" border="1">
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
            ScoreD scoD = new ScoreD();
            StudentD stuD = new StudentD();
            ArrayList<Score> stus = scoD.getOnePage(1, 10000);
            for (Score stu : stus) {
                String name = stuD.findWithId(stu.getId()).getName();
                String major = stuD.findWithId(stu.getId()).getMajor();
    %>
    <tr>
            <td align="center"><%=stu.getId()%></td>
            <td align="center"><%=name%></td>
            <td align="center"><%=major%></td>
            <td align="center"><%=stu.getDatabase()%></td>
            <td align="center"><%=stu.getAndroid()%></td>
            <td align="center"><%=stu.getJsp()%></td>
    </tr>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>
</body>
</html>

