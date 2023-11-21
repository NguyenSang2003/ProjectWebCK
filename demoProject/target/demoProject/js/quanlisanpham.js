const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);
const formOdd = document.querySelector("#form-odd")
const belongTopic = $('#idbts-odd')
const  nameImg = $('#name-odd')
const priceImg = $('#price-odd')
const discountImg = $('#discount-odd')
const descriptionImg = $('#description-odd')
const showImgOdd = document.querySelector("#show-image-odd")
const uploadImgOdd = document.querySelector("#oddImage")
let base64;
//show ảnh ra màn hình
uploadImgOdd.addEventListener("change", (e)=>{
    const file = e.target.files[0]
    const url = URL.createObjectURL(file)
    showImgOdd.src = url;
    imageToBase64(file,(base64Value)=>{
        base64  = base64Value;
    })
})
function imageToBase64(file, callback) {
    return new Promise((resolve, reject) => {
        const reader = new FileReader();
        reader.onloadend = () => {
            const result= reader.result;
            callback(result)
        };
        reader.onerror = reject;
        reader.readAsDataURL(file);
    })
}
const upload = async (obj)=>{
    const data = await  axios.post('http://localhost:8080/demoProject_war/product/addImg',obj)
    console.log(data.data)
    alert(data.data.message)
}
formOdd.addEventListener('submit', (e)=>{
    e.preventDefault();
    const obj = {
        nameTopic : belongTopic.value,
        nameImg:nameImg.value,
        description: descriptionImg.value,
        price : priceImg.value,
        discount: discountImg.value,
        source : base64
    }
    if(belongTopic.value.length ===0
        || nameImg.value.length ===0
        || descriptionImg.value.length ===0
        || priceImg.value.length ===0
        || discountImg.value.length ===0
    ){
        alert("Vui lòng điền đầy đủ thông tin")
    }
    else{
        upload(obj)
    }
})




// Bán album
const formAlbum = $("#formAlbum")
const albumBelongTopic = $('#idbts')
const nameAlbum = $('#name-album')
const priceAlbum = $("#price-album")
const discountAlbum = $('#discount-album')
const descriptionAlbum = $('#description-album')
const uploadImg = $("#upload-img")
const showImgs =$('#show-upload-img')
let listBase64 = []
// Xử lí phần render ra giao diện

let arrFiles = []; // Mảng để theo dõi danh sách tệp đã chọn

uploadImg.addEventListener('change', () => {
    const newFiles = Array.from(uploadImg.files);
    arrFiles = [...newFiles] // Thêm tệp mới vào mảng arrFiles

    arrFiles.forEach((file,index)=>{
        const url = URL.createObjectURL(file)
        const img = document.createElement('img')
        img.src = url;
        img.alt=`${index}`
        img.style.height= '100px'
        img.style.marginLeft = '10px'
        img.style.marginTop = '10px'
        showImgs.append(img)
    //     Tạo mảng base64
        imageToBase64(arrFiles[index],(res)=>{
            listBase64.push(res)
        })
    })

});
const uploadAlbum= async (obj)=>{

}
formAlbum.addEventListener('submit', (e)=>{
    e.preventDefault()
    const obj = {
        nameTopic : belongTopic.value,
        nameAlbum:nameImg.value,
        descriptionAlbum: descriptionImg.value,
        price : priceImg.value,
        discount: discountImg.value,
        source : listBase64
    }
    if(albumBelongTopic.value.length ===0
        || nameAlbum.value.length ===0
        || descriptionAlbum.value.length ===0
        || priceAlbum.value.length ===0
        || discountAlbum.value.length ===0){
        alert("Vui lòng đầy đủ thông tin")
    }
    else{
        uploadAlbum(obj)
    }
})