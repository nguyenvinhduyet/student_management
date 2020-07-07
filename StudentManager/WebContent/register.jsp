<%--
  Created by IntelliJ IDEA.
  User: 007
  Date: 2018/11/1
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link href="resources/css/register.css" type="text/css" rel="stylesheet" />
</head>
<body>
<script>
    function check(form){
        if (form.user.value === "") {
            alert("Tên người dùng");
            return false;
        }
        if (form.password1.value === "") {
            alert("Mật khẩu");
            return false;
        }
        return true;
    }
    
    function refresh() {
        var i=Math.random();
        document.getElementById("image").src = "code.jsp?a="+i;
    }
</script>
<h1 style="margin: 50px 80px; color: darkgray; font-family: cursive;">Hệ thống quản lý giáo dục</h1>
<div class="main">
    <h5 class="title">
        <a href="login.jsp" id="login">Đâng nhập</a>
        <b>&nbsp;·&nbsp;</b>
        <a href="register.jsp" id="register">Đăng ký</a>
    </h5>
    <form action="check_register" method="post" onsubmit="return check(this)">
        <div class="form-group">
            <input type="email" name="email" class="form-control email" placeholder="Nhập email">
            <input type="text" name="user" class="form-control user" placeholder="Tên người dùng">
            <input type="password" name="password1" class="form-control password1" placeholder="Mật khẩu">
            <input type="text" name="code" placeholder="Mã code" class="code">
            <img src="code.jsp" id="image" style="float: right; width: 90px;height: 50px; margin-top: 10px" onclick="refresh()">
            <input type="submit" value="Đăng ký" class="btn btn-primary btn-lg btn-block we" />
        </div>
    </form>
</div>
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
