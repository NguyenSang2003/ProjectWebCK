<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Đăng kí</title>
    <link rel="stylesheet" href="./css/register.css">
    <link rel="stylesheet" href="./css/common.css">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.6.1/axios.min.js" integrity="sha512-m9S8W3a9hhBHPFAbEIaG7J9P92dzcAWwM42VvJp5n1/M599ldK6Z2st2SfJGsX0QR4LfCVr681vyU5vW8d218w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>

<body>
<%String err = (String)request.getAttribute("err") == null ? "" : (String) request.getAttribute("err");%>
<div class="inner">
    <h1 class="logo">Nhóm 26</h1>
    <h3 class="title">Đăng kí</h3>
    <p style="text-align: center; color: red; font-weight: bold;"><%=err%></p>
    <form accept-charset="UTF-8" action="http://localhost:8080/demoProject_war/register" method="post" class="form" id="form" enctype="multipart/form-data">
        <div class="form-group">
            <input type="email" id="email" placeholder="Email" class="caret" name="email">
            <span class="show-message"></span>
        </div>
        <div class="form-group">
            <input type="text" placeholder="Tên người dùng" class="caret" id="fullname" name="fullname">
            <span  class="show-message"></span>
        </div>
        <div class="form-group">
            <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="caret">
            <span class="show-message"></span>
        </div>
        <div class="form-group">
            <input type="password" placeholder="Nhập lại mật khẩu" class="caret" id="password_confirmation" name="password_confirmation">
            <span class="show-message"></span>
        </div>
        <div class="bt_sign_up">
            <button type="submit">Đăng kí</button>
    </div>
    </form>
    <div class="athoner-register">
        <span>Hoặc đăng kí với</span>
        <ul class="list">
            <li class="item"><a href="" class="link">
                <img src="./asset/face.png" alt="" class="img-logo">
            </a></li>
            <li class="item"><a href="" class="link">
                <img src="./asset/gg.png" alt="" class="img-logo">
            </a></li>
        </ul>
    </div>
    <div class="signin mt-8">
        <span>Bạn đã có tài khoản ?</span>
        <a href="login.jsp" class="none_decorate">Đăng nhập</a>
    </div>
    
<script src="./js/formValidation.js"></script>
<script>
    const  onSubmit = async (dataSub)=>{

      const data =  await  axios.post("http://localhost:8080/demoProject_war/register", dataSub)
        console.log(dataSub)
    }
    Validator({
        form: '#form',
        errorSelector:'.show-message',
        rules:[
            Validator.isRequired('#fullname','Vui lòng nhập trường này'),
            Validator.isRequired('#email','Vui lòng nhập trường này'),
            Validator.isEmail('#email','Trường này phải là email'),
            Validator.isRequired('#password','Vui lòng nhập trường này'),
            Validator.minLength('#password',6),
            Validator.isRequired('#password_confirmation','Vui lòng nhập trường này'),
            Validator.isConfirmed('#password_confirmation',function(){
              return document.querySelector('#form #password').value;
            },'Mật khẩu nhập lại không chính xác')

        ],
        onSubmit:(data)=>{
          console.log(data);
            onSubmit(data)
        }
    })
</script>
</body>

</html>