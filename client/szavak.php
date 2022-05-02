<script>
    const nagykorue = <?php if(isset($_SESSION["kor"])) echo ($_SESSION["kor"]>=18?1:0); else echo "0"; ?>;
</script>
<h1 class="text-center">Szavak</h1>
<div class="select row justify-content-center">
    <select>
    </select>
    <table class="table table-striped">
        <thead class="thead-dark">
            <th>Szó</th>
            <th>Kép</th>
            <th>Jelentés</th>
        </thead>
        <tbody>
            
        </tbody>
    </table>
</div>

<script src="szavak.js"></script>