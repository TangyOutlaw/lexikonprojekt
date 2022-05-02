<?php
    if(isset($_SESSION['role']) && $_SESSION['role'] == 'admin'):
?>
<h1 class="text-center">Szavak</h1>
<button type="button" class="btn btn-primary" onclick="showFormHolder();">Új szó hozzáadása</button>
<div class="select row justify-content-center">
    <table class="table table-striped">
        <thead class="thead-dark">
            <th>Id</th>
            <th>Szó</th>
            <th>Kép</th>
            <th>Kategória</th>
            <th>Nehezség</th>
            <th>Művelet</th>
        </thead>
        <tbody>
            
        </tbody>
    </table>
</div>

<style>
    #formHolder{
        position: fixed;
        z-index: 10;
        background-color: whitesmoke;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        display: none;
        align-items: center;
    }
</style>

<div id="successDialog" style="
    display: none;
    align-items: center;
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    background: #55ff66;
    justify-content: center;
    text-transform: uppercase;
    z-index: 9999;
">
    Sikeresen hozzáadva
</div>

<div id="formHolder">
    <div id="container" style="margin: 0px auto;">
        <form>
            <div class="form-group">
                <label for="szo">Szó</label>
                <input type="text" class="form-control" id="szo" aria-describedby="szoHelp" required>
                <small id="szoHelp" class="form-text text-muted">Adja meg a hozzáadandó szót.</small>
            </div>
            <div class="form-group">
                <label for="kep">Kép link</label>
                <input type="text" class="form-control" id="kep" aria-describedby="kepHelp" required>
                <small id="kepHelp" class="form-text text-muted">Adja meg a szóhoz tartozó kép linkjét.</small>
            </div>
            <div class="form-group">
                <label for="keszito">Kép készítője</label>
                <input type="text" class="form-control" id="keszito" aria-describedby="szoHelp" required>
                <small id="szoHelp" class="form-text text-muted">Adja meg a kép készítője nevét.</small>
            </div>
            <div class="form-group">
                <label for="kategoria">Kategória</label>
                <select class="form-control" id="kategoria" aria-describedby="kategoriaHelp" required></select>
                <small id="kategoriaHelp" class="form-text text-muted">Válaszd ki a szóhoz tartozó kategóriát.</small>
            </div>
            <div class="form-group">
                <label for="nehezseg">Nehézség</label>
                <select class="form-control" id="nehezseg" aria-describedby="nehezsegHelp" required></select>
                <small id="nehezsegHelp" class="form-text text-muted">Válaszd ki a szóhoz tartozó nehézség.</small>
            </div>
            <button type="submit" class="btn btn-primary">Hozzáadás</button>
            <button type="button" class="btn btn-primary" onclick="hideFormHolder();">Mégsem</button>
        </form>
    </div>
</div>


<script src="modositas.js"></script>

<?php
    endif
?>