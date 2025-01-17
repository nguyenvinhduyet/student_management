<%@ page import="dao.TeacherD" %>
<%@ page import="dao.StudentD" %>
<%@ page import="vo.Student" %>
<%@ page import="vo.Teacher" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="java.util.Date" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 007
  Date: 2018/11/28
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mã xác nhận</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link href="resources/css/forget.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<h1 style="margin: 50px 80px; color: darkgray; font-family: cursive;">Hệ thống quản lý giáo dục</h1>
<%
    String id = request.getParameter("user");
    TeacherD teacherD = new TeacherD();
    StudentD studentD = new StudentD();
    Teacher teacher = null;
    Student student = null;
    try {
        teacher = teacherD.findWithId(id);
        student = studentD.findWithId(id);
    } catch (Exception e) {
        out.print(e);
    }

    if (teacher != null) {
        if(teacher.getEmail() == null){
%>
            <script>alert("Account chưa thiết lập Email");
                window.location.href = 'login.jsp';
            </script>
<%
        }else {
            int x = (int) (1000 + Math.random() * (9999 - 1000 + 1));
            String toMail = teacher.getEmail();
            String title = "Hệ thống quản lý giáo dục! Mã xác minh";
            String content = Integer.toString(x);

            try {
            	
            
                Properties prop = new Properties();

                prop.put("mail.smtp.host", "smtp.gmail.com");
                
                prop.put("mail.smtp.port", "587");
                prop.put("mail.smtp.auth", "true");
                prop.put("mail.smtp.starttls.enable", "true");
                
                System.out.print("Start connect email!");
                Session s = Session.getInstance(prop);

                MimeMessage message = new MimeMessage(s);
                message.setFrom(new InternetAddress("vinhduyetnguyen38@gmail.com"));
                message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));

                message.setSubject(title);
                message.setContent(content, "text/plain;charset=utf-8");
                message.setSentDate(new Date());
                message.saveChanges();
                
            	System.out.print("Start send email!");
                Transport transport = s.getTransport("smtp");
                
                transport.connect("smtp.gmail.com", "vinhduyetnguyen38@gmail.com", "Vinhduyet721999");
                transport.sendMessage(message, message.getAllRecipients());
            	System.out.print("Start send email 2!");
                transport.close();
                session.setAttribute("reset", content);
%>
                <script>alert("Gửi thành công, vui lòng truy cập hộp thư\"<%=toMail%>\"Kiểm tra mã xác nhận");</script>
                <div class="main">
                    <form role="form" action="teacher/resetPassword.jsp" method="post">
                        <div class="form-group" align="center">
                            <input class="form-control" type="text" name="reset" placeholder="Mã xác nhận"><br>
                            <input type="hidden" name="id" value="<%=id%>">
                            <input type="submit" class="btn btn-success" value="Bước tiếp theo">
                            <input type="button" class="btn btn-info" value="Hủy bỏ" style="margin-left: 20px" onclick="window.location.href='login.jsp'">
                        </div>
                    </form>
                </div>
<%
            } catch (Exception e) {
            out.print(e);
            }
        }

    } else if (student != null) {
        if (student.getEmail() == null) {
%>
            <script>alert("Account chưa thiết lập email");
                window.location.href = 'login.jsp';
            </script>
<%
        } else {
            int x = (int) (1000 + Math.random() * (9999 - 1000 + 1));
            String toMail = student.getEmail();
            String title = "Hệ thống quản lý giáo dục! Mã xác minh";
            String content = Integer.toString(x);

            try {
                Properties prop = new Properties();
				prop.put("mail.smtp.host", "smtp.gmail.com");
                prop.put("mail.smtp.port", "587");
                prop.put("mail.smtp.auth", "true");
                prop.put("mail.smtp.starttls.enable", "true");
                
                Session s = Session.getInstance(prop);

                MimeMessage message = new MimeMessage(s);
                message.setFrom(new InternetAddress("vinhduyetnguyen38@gmail.com"));
                message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));

                message.setSubject(title);
                message.setContent(content, "text/plain;charset=utf-8");
                message.setSentDate(new Date());
                message.saveChanges();

                Transport transport = s.getTransport("smtp");
                transport.connect("smtp.gmail.com", "vinhduyetnguyen38@gmail.com", "Vinhduyet721999");
                transport.sendMessage(message, message.getAllRecipients());
                transport.close();
                session.setAttribute("reset", content);
%>
                <script>alert("Gửi thành công, vui lòng truy cập hộp thư\"<%=toMail%>\"Kiểm tra mã xác minh");</script>
                <div class="main">
                    <form role="form" action="student/resetPassword.jsp" method="post">
                        <div class="form-group" align="center">
                            <input class="form-control" type="text" name="reset" placeholder="Mã xác minh"><br>
                            <input type="hidden" name="id" value="<%=id%>">
                            <input name="email" value="<%=toMail%>" type="hidden">
                            <input type="submit" class="btn btn-success" value="下一步">
                            <input type="button" class="btn btn-info" value="Hủy bỏ" style="margin-left: 20px" onclick="window.location.href='login.jsp'">
                        </div>
                    </form>
                </div>
<%
            } catch (Exception e) {
                out.print(e);
            }
        }
    }else {
%>
        <script>alert("Account không tồn tại!");
            window.location.href = 'forget.jsp';
        </script>
<%
    }
%>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
