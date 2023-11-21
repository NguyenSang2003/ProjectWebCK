<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/common.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<% String err  = (String) request.getAttribute("err") == null ? "" :(String) request.getAttribute("err");%>
<div class="inner">
    <h1 class="logo">Nhóm 26</h1>
    <h3 class="title">Đăng nhập</h3>
    <p style="text-align: center; color: red; font-weight: bold;"><%=err%></p>
    <form action="./login" class="form" method="post">
        <input type="text" placeholder="Email" class="caret" name="email">
        <input type="password" placeholder="Mật khẩu" class="caret" name="password">
        <button type="submit">Đăng nhập</button>
    </form>
    <div class="athoner-login">
        <span>Hoặc đăng nhập với</span>
        <ul class="list">
            <li class="item"><a href="" class="link">
                <img src="./asset/face.png" alt="" class="img-logo">
            </a></li>
            <li class="item"><a href="" class="link">
                <img src="./asset/gg.png" alt="" class="img-logo">
            </a></li>
        </ul>
    </div>
    <div class="register">
        <div >
            <a class="redirect-home" href="index.jsp"><span><i class="fa-solid fa-angle-left"></i></span><span>Trang chủ</span></a>
            
        </div>
       <p class="redirect"> <span>Bạn chưa có tài khoản?</span> <a href="register.jsp">Đăng kí</a> </p>
       <a href="forgotPassword.jsp" class="fogot db"> Quên mật khẩu</a>
    </div>
</div>
</body>
</html>