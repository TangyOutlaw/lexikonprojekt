let szo = document.getElementById('szo');
let kep = document.getElementById('kep');
let tbody = document.querySelector('tbody');
let keszito = document.getElementById('keszito');
let jelentes = document.getElementById('jelentes');
let nehezseg = document.getElementById('nehezseg');
let kategoria = document.getElementById('kategoria');

fetch('../server/readkatszo.php')
    .then(response => response.json())
    .then(data => render(data))

fetch(`../server/readkategoria.php?kor=${nagykorue}`)
    .then(response => response.json())
    .then(data => renderTwo(data))

function render(data){
    let optStr=`<option value="0" id="opt">válassz ki egy kategóriát</option>`

    for(let obj of data){
        optStr += `<option value="${obj.id}">${obj.nev}</option>`
    }
    document.querySelector('select').innerHTML=optStr

    document.querySelector('select').addEventListener('change',myFilter)
}

function myFilter(e){
    console.log(e.target.value)
    fetch(`../server/readkategoria.php?id=${e.target.value}&kor=${nagykorue}`)
    .then(response => response.json())
    .then(data => renderTwo(data))
}

function renderTwo(data){
    console.log(data)
    let tblStr=''
    for(let o of data){
        tblStr+=`<tr><td contenteditable="true">${o.szo}</td>
        <td><img class="img-fluid img-thumbnail" style="width: 200px;" src='${o.kep}' alt="${o.kep}"></td>
        <td width="50%">${o.jelentes}</td></tr>`
    }
    tbody.innerHTML=tblStr
}