<?php
require_once 'db.php';

if( isset( $_GET['szo'] ) && isset( $_GET['kep'] ) && isset( $_GET['keszito'] ) && isset( $_GET['kategoria'] ) && isset( $_GET['nehezseg'] ) ) {
    $sql = "INSERT INTO szavak (szo, kep, keszito, kategoriaid, nehezsegid) VALUES ('{$_GET['szo']}','{$_GET['kep']}','{$_GET['keszito']}','{$_GET['kategoria']}','{$_GET['nehezseg']}')";
    $stmt = $db->exec( $sql );
    echo $stmt ? "Sikeres módosítás" : "Sikertelen módosítás";
}

?>