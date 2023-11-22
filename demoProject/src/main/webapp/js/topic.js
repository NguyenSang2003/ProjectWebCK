const form = document.querySelector('#formTopic')
const nameTopic = document.querySelector('#nameTopic')
const interfaceImage = document.querySelector('#interfaceImage')
const showImg = document.querySelector('.show-image')
let base64 ;

interfaceImage.addEventListener('change', (e)=>{
    const file = e.target.files[0]
    let url = URL.createObjectURL(file)
    showImg.src = url
    imageToBase64(file, (base64Value)=>{
            base64 = base64Value
    })
})
function imageToBase64(file, callback) {
    return new Promise((resolve, reject) => {
        const reader = new FileReader();
        reader.onloadend = () => {
            base64= reader.result;
            callback(base64)
        };
        reader.onerror = reject;
        reader.readAsDataURL(file);
    })
}
// const upload = async  (nameTopic , interfaceImage)=>{
//     const  {data} = await  axios.post("http://localhost:8080/demoProject_war/topic", {
//         nameTopic,
//         interfaceImage
//     },{
//         headers: {
//             'Content-Type': 'application/json;charset=UTF-8',
//         },
//     })
//     if(data.status){
//         alert(data.message)
//         location.reload()
//     }
//     else{
//         alert(data.message)
//         nameTopic.value = "";
//         interfaceImage.value = ""
//     }
//
// }
function upload(nameTopic, interfaceImage) {
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                var data = JSON.parse(xhr.responseText);
                if (data.status === 200) {
                    alert(data.message);
                    location.reload();
                } else {
                    alert(data.message);
                    nameTopic.value = "";
                    interfaceImage.value = "";
                }
            } else {
                alert("Error: " + xhr.status);
            }
        }
    };

    xhr.open("POST", "http://localhost:8080/demoProject_war/topic", true);
    xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");

    var requestData = {
        nameTopic: nameTopic,
        interfaceImage: interfaceImage,
    };

    xhr.send(JSON.stringify(requestData));
}

form.addEventListener('submit',(e)=>{
    e.preventDefault();
    name = nameTopic.value;
    if(name.length > 0 && base64 != undefined){
        upload(name,base64)

    }

    else{
        alert("Vui lòng nhập đầy đủ thông tin trước khi đăng")
    }
})
