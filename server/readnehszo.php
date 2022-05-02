<?php
require_once 'db.php';
$sql="select * from nehezseg order by id";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());

?>