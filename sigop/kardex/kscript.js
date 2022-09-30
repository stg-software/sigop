
let innerByName = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byName">
                    <label class="form-check-label" for="byName">Por Nombre</label>`;
let innerByCurp = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byCurp">
                    <label class="form-check-label" for="byCurp">Por CURP</label>`;
let innerInsert = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="insert">
                    <label class="form-check-label" for="insert">Agregar</label>`;



let byNameDiv = document.getElementById("byNameDiv");
let byCurpDiv = document.getElementById("byCurpDiv");
let insertDiv = document.getElementById("insertDiv");

byNameDiv.innerHTML = innerByName;
byCurpDiv.innerHTML = innerByCurp;
insertDiv.innerHTML = innerInsert;


let byName = document.getElementById("byName");
let byCurp = document.getElementById("byCurp");
let insert = document.getElementById("insert");

byName.addEventListener("click", () => {
    window.location.href = "./kardex.aspx";
    innerByName = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byName" checked>
                    <label class="form-check-label" for="byName">Por Nombre</label>`;    
    innerByCurp = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byCurp">
                    <label class="form-check-label" for="byCurp">Por CURP</label>`;
    innerInsert = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="insert">
                    <label class="form-check-label" for="insert">Agregar</label>`;
    byNameDiv.innerHTML = innerByName;
    byCurpDiv.innerHTML = innerByCurp;
    insertDiv.innerHTML = innerInsert;

})

byCurp.addEventListener("click", () => {
    window.location.href = "./byCurp.aspx";
    innerByName = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byName">
                    <label class="form-check-label" for="byName">Por Nombre</label>`;
    innerByCurp = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byCurp" checked>
                    <label class="form-check-label" for="byCurp">Por CURP</label>`;
    innerInsert = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="insert">
                    <label class="form-check-label" for="insert">Agregar</label>`;
    byNameDiv.innerHTML = innerByName;
    byCurpDiv.innerHTML = innerByCurp;
    insertDiv.innerHTML = innerInsert;
   
})

insert.addEventListener("click", () => {
    window.location.href = "./insertar.aspx";
    innerByName = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byName">
                    <label class="form-check-label" for="byName">Por Nombre</label>`;
    innerByCurp = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="byCurp">
                    <label class="form-check-label" for="byCurp">Por CURP</label>`;
    innerInsert = ` <input class="form-check-input" type="radio" name="flexRadioDefault" id="insert" checked>
                    <label class="form-check-label" for="insert">Agregar</label>`;
    byNameDiv.innerHTML = innerByName;
    byCurpDiv.innerHTML = innerByCurp;
    insertDiv.innerHTML = innerInsert;
})