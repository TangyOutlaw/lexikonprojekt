fetch('../server/readkatszo.php')
    .then(response => response.json())
    .then(data => render(data))

function render(data){
    let optStr=`<option value="0">válassz ki egy kategóriát</option>`

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
    for(let obj of data){
        tblStr+=`<tr><td draggable="true">${obj.szo}</td></tr>`
    }
    document.querySelector('tbody').innerHTML=tblStr

    getTD()
}

function getTD(){
    td = document.querySelectorAll("td")

    td.forEach(element => {
        element.ondragstart = () => {
            word = element.innerHTML
        }
        element.dragend = (e) => {
            console.log(e.target);
        }
    });

    textarea = document.querySelector("textarea")

    textarea.onkeypress = () => {
        textarea = document.querySelector("textarea")
    }

    textarea.ondrop = (e) => {
        e.preventDefault();
        textarea.innerHTML += word+" "
    }
    textarea.ondragover = (e) => {
        e.preventDefault();
    }
}

