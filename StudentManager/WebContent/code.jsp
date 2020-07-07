<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.util.Random" %>
<%@ page import="javax.imageio.ImageIO" %>
<%--
  Created by IntelliJ IDEA.
  User: 007
  Date: 2018/11/22
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="image/JPEG;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setCharacterEncoding("utf-8");

    response.setHeader("Cache-Control", "no-cache");
    //giá trị của hình đại diện
    int width = 60, height = 20;
    BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
    //khai báo một thực thể Graphics
    Graphics g = image.getGraphics();
    //Màu nền
    g.setColor(new Color(200, 200, 200));
    g.fillRect(0, 0, width, height);
    //Hàm tạo ngẫu nhiên 4 số
    Random rnd = new Random();
    int randNum = rnd.nextInt(8999) + 1000;
    String randStr = String.valueOf(randNum);
    //Lưu mã xác minh sử dụng session
    session.setAttribute("randStr", randStr);
    //Đưa các giá trị vào Graphics g
    g.setColor(Color.BLACK);
    g.setFont(new Font("", Font.PLAIN, 20));
    g.drawString(randStr, 10, 17);
    //Tạo 1 mảng ngẫu nhiên 100 điểm
    for (int i = 0; i < 100; i++) {
        int x = rnd.nextInt(width);
        int y = rnd.nextInt(height);
        g.drawOval(x, y, 1, 1);
    }
    //Xuất hình ảnh ra 
    ImageIO.write(image, "jpeg", response.getOutputStream());
    out.clear();
    out = pageContext.pushBody();
%>
</body>
</html>
