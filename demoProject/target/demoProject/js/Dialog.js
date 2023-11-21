function Dialog(idForm,idBtn,where,attribute,type){
    document.addEventListener("DOMContentLoaded", ()=>{
        $(idForm).on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            id = button.data('id') // Extract info from data-* attributes
        })
        const btnDelete = document.querySelector(idBtn)
        btnDelete.addEventListener('click', async ()=>{
            const typeFunc = ()=>{
                if(type ==='delete'){
                    return   axios.delete(`http://localhost:8080/demoProject_war/${where}?${attribute}=${id}`)
                }
                else if(type ==='put'){
                    return    axios.put(`http://localhost:8080/demoProject_war/${where}?${attribute}=${id}`)
                }
            }
            const {data} = await typeFunc()
            console.log(`http://localhost:8080/demoProject_war/${where}?${attribute}=${id}`)
            if(data.status ===200){
                alert(data.message)
                location.reload()
            }
            else  if (data.status ===500){
                alert(data.message)
            }
        })
    })
}
Dialog()