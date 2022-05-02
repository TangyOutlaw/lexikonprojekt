let szo = document.getElementById('szo');
let kep = document.getElementById('kep');
let form = document.querySelector("form");
let tbody = document.querySelector('tbody');
let keszito = document.getElementById('keszito');
let nehezseg = document.getElementById('nehezseg');
let kategoria = document.getElementById('kategoria');
let formHolder = document.getElementById('formHolder');
let successDialog = document.getElementById('successDialog');


console.log(form); 

form.addEventListener("submit", (e) => {
    addSzo();
    e.preventDefault();
});

function loadSzo(){
    fetch('../server/readszavak.php')
        .then(response => response.json())
        .then(data => render(data))
}

loadSzo();

function render(data){
    console.log(data);
    let tableString = '';

    for(let o of data){
        tableString += `
        <tr>
            <td>${o.id}</td>
            <td contenteditable="true">${o.szo}</td>
            <td><img class="img-fluid img-thumbnail" src='${o.kep}' alt="${o.kep}"></td>
            <td>${o.kategoria}</td>
            <td>${o.nehezseg}</td>
            <td>
                <button type="button" class="btn btn-success" onclick="updateSzavak(${o.id}, this);">Módosít</button>
                <button type="button" class="btn btn-danger" onclick="deleteSzavak(${o.id}, this);">Törlés</button>
            </td>
        </tr>`;
    }

    tbody.innerHTML = tableString;
}

fetch("../server/readkatszo.php")
    .then(response => response.json())
    .then(data => loadKategoria(data))

function loadKategoria(data){
    kategoria.innerHTML = data.map((o) => `<option value="${o.id}">${o.nev}</option>`).join('');
}

fetch("../server/readnehszo.php")
    .then(response => response.json())
    .then(data => loadNehezseg(data))

function loadNehezseg(data){
    nehezseg.innerHTML = data.map((o) => `<option value="${o.id}">${o.szint}</option>`).join('');
}

function deleteSzavak(id, item){
    item.parentNode.parentNode.parentNode.removeChild(item.parentNode.parentNode);

    fetch('server/deleteszo.php?id='+id)
        .then(response => response.text())
        .then(data => console.log(data))
}

function updateSzavak(id, item){
    console.log(item);
    console.log(item.parentNode.parentNode.children);
    let javitottSzo = item.parentNode.parentNode.children[1].innerHTML;

    fetch()
        .then(response => response.text())
        .then(data => {
            console.log(data);
            loadSzavak();
        })
}

function addSzo(){
    console.log(szo.value);
    console.log(kep.value);
    console.log(keszito.value);
    console.log(kategoria.value);
    console.log(nehezseg.value);

    fetch("../server/addszo.php?szo="+szo.value+"&kep="+kep.value+"&keszito="+keszito.value+"&kategoria="+kategoria.value+"&nehezseg="+nehezseg.value)
        .then(response => response.text())
        .then(data => {
            console.log(data);
            loadSzavak();
            showSuccessDialog();
            hideFormHolder();

        })

        szo.value = "";
        kep.value = "";
        keszito = "";

}

function hideFormHolder(){
    formHolder.style.display = "none";
}

function showFormHolder(){
    formHolder.style.display = "flex";
}

function showSuccessDialog(){
    successDialog.style.display = "flex";

    setTimeout(() => {
        successDialog.style.display = "none";
    }, 1000);
}