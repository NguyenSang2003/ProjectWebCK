
const logout = document.querySelector('#logout')
logout.addEventListener("click" , async ()=>{
    console.log("hihi")
    const data = await axios.get("http://localhost:8080/demoProject_war/logout")
    location.reload()
})