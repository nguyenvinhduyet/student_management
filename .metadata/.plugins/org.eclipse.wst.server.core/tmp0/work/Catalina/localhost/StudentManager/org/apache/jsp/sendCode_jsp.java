/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.33
 * Generated at: 2020-07-18 09:21:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.TeacherD;
import dao.StudentD;
import vo.Student;
import vo.Teacher;
import java.util.Properties;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.Message;
import java.util.Date;
import javax.mail.Transport;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;

public final class sendCode_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.mail");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.mail.internet");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("javax.activation");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("javax.mail.internet.InternetAddress");
    _jspx_imports_classes.add("javax.mail.Message");
    _jspx_imports_classes.add("java.util.Properties");
    _jspx_imports_classes.add("javax.mail.Transport");
    _jspx_imports_classes.add("vo.Student");
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("dao.StudentD");
    _jspx_imports_classes.add("javax.mail.Session");
    _jspx_imports_classes.add("vo.Teacher");
    _jspx_imports_classes.add("javax.mail.internet.MimeMessage");
    _jspx_imports_classes.add("dao.TeacherD");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Mã xác nhận</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"resources/css/bootstrap.min.css\">\n");
      out.write("    <link href=\"resources/css/forget.css\" type=\"text/css\" rel=\"stylesheet\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<h1 style=\"margin: 50px 80px; color: darkgray; font-family: cursive;\">Hệ thống quản lý giáo dục</h1>\n");

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

      out.write("\n");
      out.write("            <script>alert(\"Account chưa thiết lập Email\");\n");
      out.write("                window.location.href = 'login.jsp';\n");
      out.write("            </script>\n");

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

      out.write("\n");
      out.write("                <script>alert(\"Gửi thành công, vui lòng truy cập hộp thư\\\"");
      out.print(toMail);
      out.write("\\\"Kiểm tra mã xác nhận\");</script>\n");
      out.write("                <div class=\"main\">\n");
      out.write("                    <form role=\"form\" action=\"teacher/resetPassword.jsp\" method=\"post\">\n");
      out.write("                        <div class=\"form-group\" align=\"center\">\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"reset\" placeholder=\"Mã xác nhận\"><br>\n");
      out.write("                            <input type=\"hidden\" name=\"id\" value=\"");
      out.print(id);
      out.write("\">\n");
      out.write("                            <input type=\"submit\" class=\"btn btn-success\" value=\"Bước tiếp theo\">\n");
      out.write("                            <input type=\"button\" class=\"btn btn-info\" value=\"Hủy bỏ\" style=\"margin-left: 20px\" onclick=\"window.location.href='login.jsp'\">\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");

            } catch (Exception e) {
            out.print(e);
            }
        }

    } else if (student != null) {
        if (student.getEmail() == null) {

      out.write("\n");
      out.write("            <script>alert(\"Account chưa thiết lập email\");\n");
      out.write("                window.location.href = 'login.jsp';\n");
      out.write("            </script>\n");

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

      out.write("\n");
      out.write("                <script>alert(\"Gửi thành công, vui lòng truy cập hộp thư\\\"");
      out.print(toMail);
      out.write("\\\"Kiểm tra mã xác minh\");</script>\n");
      out.write("                <div class=\"main\">\n");
      out.write("                    <form role=\"form\" action=\"student/resetPassword.jsp\" method=\"post\">\n");
      out.write("                        <div class=\"form-group\" align=\"center\">\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"reset\" placeholder=\"Mã xác minh\"><br>\n");
      out.write("                            <input type=\"hidden\" name=\"id\" value=\"");
      out.print(id);
      out.write("\">\n");
      out.write("                            <input name=\"email\" value=\"");
      out.print(toMail);
      out.write("\" type=\"hidden\">\n");
      out.write("                            <input type=\"submit\" class=\"btn btn-success\" value=\"下一步\">\n");
      out.write("                            <input type=\"button\" class=\"btn btn-info\" value=\"Hủy bỏ\" style=\"margin-left: 20px\" onclick=\"window.location.href='login.jsp'\">\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");

            } catch (Exception e) {
                out.print(e);
            }
        }
    }else {

      out.write("\n");
      out.write("        <script>alert(\"Account không tồn tại!\");\n");
      out.write("            window.location.href = 'forget.jsp';\n");
      out.write("        </script>\n");

    }

      out.write("\n");
      out.write("<script src=\"resources/js/jquery-3.2.1.min.js\"></script>\n");
      out.write("<script src=\"resources/js/popper.min.js\"></script>\n");
      out.write("<script src=\"resources/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
