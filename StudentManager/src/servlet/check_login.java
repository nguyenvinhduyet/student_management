package servlet;

import dao.StudentD;
import dao.TeacherD;
import vo.Student;
import vo.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/check_login")
public class check_login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doGet(request, response);
    }

    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String user = request.getParameter("user");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        TeacherD teacherD = new TeacherD();
        StudentD studentD = new StudentD();
        Teacher teacher = null;
        Student student = null;

        try {
            // åˆ¤æ–­ç”¨æˆ·èº«ä»½
            teacher = teacherD.checkAccount(user, password);
            student = studentD.checkAccount(user, password);
        }
        catch (Exception e) {
            out.print(e);
        }

        if (teacher != null) {
            //å�‘sessionä¸­æ·»åŠ ç”¨æˆ·ä¿¡æ�¯
            session.setAttribute("info", teacher);

            //æ£€æŸ¥ç”¨æˆ·æ˜¯å�¦éœ€è¦�ä¿�æŒ�ç™»å½•çŠ¶æ€�
            if (remember != null) {
                //å�‘é€�cookieåˆ°å®¢æˆ·ç«¯
                Cookie userCookie = new Cookie("name", user);
                userCookie.setMaxAge(10);
                response.addCookie(userCookie);
            }
            response.sendRedirect("one_page_student");
        }
        else if (student != null){
            //å�‘sessionä¸­æ·»åŠ ç”¨æˆ·ä¿¡æ�¯
            session.setAttribute("info", student);

            //æ£€æŸ¥ç”¨æˆ·æ˜¯å�¦éœ€è¦�ä¿�æŒ�ç™»å½•çŠ¶æ€�
            if (remember != null) {
                //å�‘é€�cookieåˆ°å®¢æˆ·ç«¯
                Cookie userCookie = new Cookie("name", user);
                userCookie.setMaxAge(10);
                response.addCookie(userCookie);
            }
            response.sendRedirect("student/main.jsp");
        }
        else {
            out.print("<script>alert(\"ç”¨æˆ·å��æˆ–å¯†ç �é”™è¯¯ï¼�\");");
        }
    }
}
