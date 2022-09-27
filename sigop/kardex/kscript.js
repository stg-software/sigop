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
let kinsert = document.getElementById("kinsert");
let kcontent = document.getElementById("kcontent");
let kardexDiv = document.querySelectorAll(".ksearch");

kardexDiv[0].style.display = "grid";
kardexDiv[1].style.display = "none";
kardexDiv[2].style.display = "none";

porNombre.addEventListener("click", () => {
    kardexDiv[0].style.display = "grid";
    kardexDiv[1].style.display = "none";
    kardexDiv[2].style.display = "none";
});

porCurp.addEventListener("click", () => {
    kardexDiv[0].style.display = "none";
    kardexDiv[1].style.display = "grid";
    kardexDiv[2].style.display = "none";
});

kinsert.addEventListener("click", () => {
    kardexDiv[0].style.display = "none";
    kardexDiv[1].style.display = "none";
    kardexDiv[2].style.display = "grid";
})