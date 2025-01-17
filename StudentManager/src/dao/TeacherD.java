package dao;
import Connection.SQLServerConnUtils_JTDS;
import vo.Teacher;

import java.sql.*;


public class TeacherD {
    private Connection conn = null;

    public Teacher checkAccount(String email, String password) throws Exception {
        initConnection();
        Statement stat = conn.createStatement();
        String sql = "select * from teacher where email = '" + email + "' and password = '" + password + "'";
        ResultSet rs = stat.executeQuery(sql);
        Teacher tea = getTeacher(rs);
        closeConnection();
        return tea;
    }

    public Teacher findWithId(String id) throws Exception {
        initConnection();
        Statement stat = conn.createStatement();
        String sql = "select * from teacher where id = '" + id + "'";
        ResultSet rs = stat.executeQuery(sql);
        Teacher tea = getTeacher(rs);
        closeConnection();
        return tea;
    }

    public Teacher insertTeacher(String id, String password, String email) throws Exception {
        initConnection();
        String sql = "insert into teacher(id, password, email) values(?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, id);
        ps.setString(2, password);
        ps.setString(3, email);
        ps.executeUpdate();
        Teacher teacher = findWithId(id);
        closeConnection();
        return teacher;
    }

    public Teacher updateTeacher(String id, String name, String sex, String email, String password) throws Exception{

        initConnection();
        String sql = "update teacher set name=?, sex=?, email=?, password=? where id=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, sex);
        ps.setString(3, email);
        ps.setString(4, password);
        ps.setString(5, id);
        ps.executeUpdate();
        Teacher teacher = findWithId(id);
        closeConnection();
        return teacher;
    }

    public void updateTeacherPassword(String id, String password) throws Exception{

        initConnection();
        String sql = "update teacher set password=? where id=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, password);
        ps.setString(2, id);
        ps.executeUpdate();
        closeConnection();
    }

    private Teacher getTeacher(ResultSet rs) throws SQLException {
        Teacher tea = null;
        if (rs.next()) {
            tea = new Teacher();
            tea.setId(rs.getString("id"));
            tea.setPassword(rs.getString("password"));
            tea.setName(rs.getString("name"));
            tea.setEmail(rs.getString("email"));
            tea.setSex(rs.getString("sex"));
        }
        return tea;
    }

    private void initConnection() throws Exception {
        //Class.forName("com.mysql.jdbc.Driver");
    	//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_manager?useSSL=false", "root", "111");
    	Class.forName("net.sourceforge.jtds.jdbc.Driver");
    	String connectionURL = "jdbc:jtds:sqlserver://" + "localhost" + ":1433/" + "student_manager" + ";instance=" + "SQLEXPRESS";
    	conn = DriverManager.getConnection(connectionURL, "sa", "12345");
    }

    private void closeConnection() throws Exception {
        conn.close();
    }
}
