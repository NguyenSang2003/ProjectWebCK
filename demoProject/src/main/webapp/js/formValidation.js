function Validator(option){
    let selectorRules = {}
    // Hàm hực thi
    function validate(inputElement,rule){
        var errorMessage ;
        var errorElement = inputElement.parentElement.querySelector(option.errorSelector)
        // Lấy ra các rule của selector
        var rules = selectorRules[rule.selector];
        // lọc qua từng rule vào kiểm tra
        for(var i = 0; i<rules.length;i++){
            errorMessage= rules[i](inputElement.value);
            // Nêu có lỗi dừng kiểm tra
            if(errorMessage) break;
        }
        if(errorMessage){
            errorElement.innerText =errorMessage
            inputElement.parentElement.classList.add('invalid')
        }
        else{
            errorElement.innerText =''
            inputElement.parentElement.classList.remove('invalid')

        }
        return !errorMessage
    }
    // Lấy Element của form
    const formElement = document.querySelector(option.form)
    if(formElement){
        // Khi submit form
        formElement.onsubmit=(e)=>{
            e.preventDefault();
            var isFormInvalid =true;
            option.rules.forEach((rule)=>{
                var inputElement = formElement.querySelector(rule.selector);
                var isValid = validate(inputElement,rule)
                if(!isValid){
                    isFormInvalid =false
                }
            });
            var enableInput = formElement.querySelectorAll('[name]:not([disabled])')
            var formValue = Array.from(enableInput).reduce((values,input)=>{
                values[input.name] = input.value
                return values[input.name] && values;
            },{})
            if(isFormInvalid){
                if( typeof option.onSubmit ==='function'){
                    var formEnableInput = formElement.querySelectorAll('[name]')
                    var formValue = Array.from(formEnableInput).reduce((values, input)=>{
                        return (values[input.name] = input.value) && values
                    },{})
                    option.onSubmit(formValue)
                }
            }
            else{
                // console.log('Có lỗi');
            }
        }
        // Lặp qua rule và lắng nghe sự kiện
        option.rules.forEach(rule => {
            //Lưu lại cái rule cho mỗi input
            if(Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test)
            }
            else{
                selectorRules[rule.selector] = [rule.test];
            }
            var inputElement = formElement.querySelector(rule.selector)
            if(inputElement){
                // Xử lí blur
                inputElement.onblur= function(){
                   validate(inputElement,rule)
                }
                // Xử lí khi nhập vào input
                inputElement.oninput=()=>{
                    var errorElement = inputElement.parentElement.querySelector(option.errorSelector)
                    errorElement.innerText =''
                    inputElement.parentElement.classList.remove('invalid')
                }
            }
        });
    }
}
// Định nghĩa cái luật lệ
Validator.isRequired = function(selector,message){
    return {
        selector,
        test: function(value){
            return value.trim() ? undefined :message ||'Vui lòng nhập trường này'
        }
    }
}
Validator.isEmail = function(selector,message){
    return {
        selector,
        test: function(value){
            const regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : message ||'Trường này phải là email'
        }
    }
}

Validator.minLength = function(selector,min,message){
    return {
        selector,
        test: function(value){
            return value.length >= min ? undefined :message|| `Vui lòng nhập mật khẩu tối thiểu ${min} kí tự`
        }
    }
}
Validator.isConfirmed = function(selector,getConfirmValue,message){
    return {
        selector,
        test: function(value){
            return value === getConfirmValue()? undefined : message||'Mật khẩu nhập lại không chính xác'
        }
    }
}