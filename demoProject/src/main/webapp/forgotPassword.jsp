<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng kí</title>
    <link rel="stylesheet" href="./css/register.css">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/forgot.css">
</head>

<body>
<div class="inner-forgot">
    <h1 class="logo">Nhóm 26</h1>
    <h3 class="title">Quên mật khẩu</h3>
    <form action="get" class="form" id="form">
        <div class="form-group">
            <input type="email" id="email" placeholder="Email" class="caret" name="email">
            <span class="show-message"></span>
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
            <button type="submit">Tiếp tục</button>
    </div>
    </form>


</div>
<script src="./js/formValidation.js"></script>
<script>
    Validator({
        form: '#form',
        errorSelector:'.show-message',
        rules:[
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
        }
    })
</script>
</body>

</html>