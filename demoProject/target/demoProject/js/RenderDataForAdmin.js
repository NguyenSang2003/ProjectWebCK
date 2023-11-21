// Render
function getDataTopic (array){
    const  tbody = document.querySelector("#renderdata")
    if(array.length ==0 || array === undefined){
        tbody.innerHTML =
            `
             <tr>
                    <td class="align-middle">0</td>
                    <td class="text-left"><img src="" alt="" style="width: 50px;">Chưa có gì</td>
                    <td class="align-middle">
                        <p class="text-center">Chưa có gì</p>
                    </td>
                    <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                </tr>
            `
    }
    const map = array.map((item, index)=>{
        return `
         <tr>
                    <td class="align-middle">${item.idTopic}</td>
                    <td class="text-left"><img src=${item.imageInterface} alt="" style="width: 50px; margin-right: 5px">${item.name}</td>
                    <td class="align-middle">
                        <p class="text-center">${item.product}</p>
                    </td>
                    <td class="align-middle"><a class="btn btn-sm btn-primary" data-id=${item.idTopic} data-toggle="modal" data-target="#deleteTopic" onclick="hanleClick(${item.idTopic})"><i class="fa fa-times"></i></a></td>
                </tr>
        `
    })
    tbody.innerHTML = map.join('')
}
const hanleClick = async (idTopic)=>{

    console.log(idTopic)
}
getDataTopic()

function  getDataUser(array){
    const  tbody = document.querySelector("#renderdata-user")
    if(array.length ==0){
        tbody.innerHTML =
            `
            <tr>
                            <td class="text-center">Chưa có ai</td>
                            <td class="align-middle">Chưa có ai</td>
                            <td class="align-middle">
                                    <p class="text-center">huuquy</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary" >Chưa có ai</button></td>
                            <td class="align-middle"> <button class="btn btn-sm btn-primary" title="Chặn"><i class="fa-solid fa-ban"></i></button></td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#deleteUser" title="Xóa"><i class="fa fa-times"></i></button></td>
                        </tr>

            `
    }
    const map = array.map((item, index)=>{
        return `
         <tr>
                            <td class="text-center">${item.id}</td>
                            <td class="align-middle">${item.email}</td>
                            <td class="align-middle">
                                    <p class="text-center">${item.username}</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary" >${item.active ? "Đang hoạt động" : "Bị chặn"}</button></td>
                            <td class="align-middle"> <button id="btnBlock" data-id=${item.id} class="btn btn-sm btn-primary" data-toggle="modal" data-target="#blockUser" title= ${item.active ? "Chặn" : "Mở chặn"}><i class="fa-solid fa-ban"></i></button></td>
                            <td class="align-middle"><button data-id=${item.id} class="btn btn-sm btn-primary" data-toggle="modal" data-target="#deleteUser" title="Xóa"><i class="fa fa-times"></i></button></td>
                        </tr>

        `
    })
    tbody.innerHTML = map.join('')
}
