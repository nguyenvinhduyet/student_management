/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.33
 * Generated at: 2020-06-23 04:15:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.teacher;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import vo.Teacher;

public final class personal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("vo.Teacher");
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

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Thông tin cá nhân</title>\n");
      out.write("    <link href=\"../resources/css/default.css\" rel=\"stylesheet\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");

    Teacher teacher = (Teacher) session.getAttribute("info");

      out.write("\n");
      out.write("<div id=\"page\" class=\"container\">\n");
      out.write("    <div id=\"header\">\n");
      out.write("        <div id=\"logo\">\n");
      out.write("            <img src=\"../userImg/");
      out.print(teacher.getId());
      out.write(".jpeg\"/>\n");
      out.write("            <h1>");
      out.print(teacher.getId());
      out.write("\n");
      out.write("            </h1>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"current_page_item\"><a href=\"personal.jsp\">Thông tin cá nhân</a></li>\n");
      out.write("                <li><a href=\"../one_page_student\">Quản lý sinh viên</a></li>\n");
      out.write("                <li><a href=\"../one_page_score\">Quản lý điểm số</a></li>\n");
      out.write("                <li><a onclick=\"return confirm('Bạn có chắc muốn thoát?');\" href=\"../exit\">Đăng xuất</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"main\">\n");
      out.write("        <div class=\"top\">\n");
      out.write("            <h2>Thông tin tài khoản</h2>\n");
      out.write("            <hr/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"info\">\n");
      out.write("            <img src=\"../userImg/");
      out.print(teacher.getId());
      out.write(".jpeg\" class=\"personalImg\"><br>\n");
      out.write("            <form action=\"../upload_teacherImg\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                <input type=\"hidden\" name=\"id\" value=\"");
      out.print(teacher.getId());
      out.write("\">\n");
      out.write("                <input type=\"file\" name=\"img\">\n");
      out.write("                <input type=\"submit\" value=\"Sử dụng ảnh\">\n");
      out.write("            </form>\n");
      out.write("            <form method=\"post\" action=\"../update_teacher\" class=\"personalForm\">\n");
      out.write("                <input name=\"uid\" value=\"");
      out.print(teacher.getId());
      out.write("\" type=\"hidden\">\n");
      out.write("                Họ tên: <input type=\"text\" name=\"name\" value=\"");
      out.print(teacher.getName());
      out.write("\" class=\"personalInput\"><br>\n");
      out.write("             \tGiới tính: <input type=\"text\" name=\"sex\" value=\"");
      out.print(teacher.getSex());
      out.write("\" class=\"personalInput\"><br>\n");
      out.write("                Email: <input type=\"text\" name=\"email\" value=\"");
      out.print(teacher.getEmail());
      out.write("\" class=\"personalInput\"><br>\n");
      out.write("              \tMật khẩu: <input type=\"password\" name=\"password\" value=\"");
      out.print(teacher.getPassword());
      out.write("\" class=\"personalInput\"><br>\n");
      out.write("                <input type=\"submit\" value=\"Cập nhật\" style=\"width: 100px; height: 30px; margin-top: 20px\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
