let kardex = document.getElementById("kardex");

//let buscarPorCurp =
//    `<form action="#" method="get" id="kardex-find-curp">
//    <div class="d-flex flex-column gap-2">
//        <input class="form-control" type="text" name="curp" placeholder="CURP" />
//        <input class="btn btn-outline-success" type="submit" name="name" value="Buscar" />
//    </div>            
//</form>
//`; 

let porNombre = document.getElementById("porNombre");
let porCurp = document.getElementById("porCurp");
let kcontent = document.getElementById("kcontent");
let ksearch = document.querySelectorAll(".ksearch");

ksearch[0].style.visibility = "collapse";
ksearch[1].style.visibility = "collapse";

porNombre.addEventListener("click", (e) => {
    ksearch[0].style.visibility = "visible";
    ksearch[1].style.visibility = "collapse";
});

porCurp.addEventListener("click", (e) => {
    ksearch[0].style.visibility = "collapse";
    ksearch[1].style.visibility = "visible";
});