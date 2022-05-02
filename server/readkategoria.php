<?php
require_once 'db.php';
//session_start();
//$korsd = $_SESSION['kor']>=18?1:0;
if(isset($_GET['id']) && $_GET['id'] != '0'){
    $sql="SELECT szo, kep, jelentes FROM szavak INNER JOIN kategoria ON szavak.kategoriaid = kategoria.id WHERE szavak.kategoriaid = {$_GET['id']} and szavak.18 <= {$_GET['kor']} ORDER BY szavak.id "; 
}else{
    $sql="SELECT szo, kep, jelentes FROM szavak INNER JOIN kategoria ON szavak.kategoriaid = kategoria.id and szavak.18 <= {$_GET['kor']} ORDER BY szavak.id";
}
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());

?>