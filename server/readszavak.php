<?php
require_once 'db.php';
$sql="
    SELECT szavak.id AS 'id', szavak.szo AS 'szo', szavak.kep AS 'kep', szavak.keszito AS 'keszito', kategoria.nev AS 'kategoria', nehezseg.szint AS 'nehezseg'
    FROM szavak INNER JOIN kategoria ON szavak.kategoriaid = kategoria.id INNER JOIN nehezseg ON szavak.nehezsegid = nehezseg.id WHERE szavak.18 = 'FALSE' 
    ORDER BY szavak.id;
";

$stmt = $db->query($sql);
echo json_encode($stmt->fetchAll());

?>