<?php
session_start();
header('AccessControl-Allow_Origin:*');
header('Content_Type: application/json');

require_once 'db.php';

if($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['type'] == 'register')
    register($db);
if($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['type'] == 'login')
    login($db);

function login($db){
    //echo "login";
    extract($_POST);
    $sql = "select *, FLOOR(DATEDIFF(CURRENT_DATE, birth)/365) as kor from user where username = ?";
    $stmt = $db -> prepare($sql);
    $stmt->execute([$username]);
    if($stmt->rowCount() == 1)
        {
            $row = $stmt->fetch();
            $isValid = password_verify($password, $row['password']);
            if($isValid)
                {
                    $_SESSION['user'] = $username;
                    $_SESSION['role'] = $row['role'];
                    $_SESSION['kor'] = $row['kor'];
                    echo true;
                }
            else
                echo false;
        }
}
function register($db){
    //echo "register";
    extract($_POST);
    $pw = password_hash($password,PASSWORD_DEFAULT);
    $sql = "insert into user (username, email, password, birth) values (?,?,?,?)";
    $stmt = $db -> prepare($sql);
    $stmt -> execute([$username,$email,$pw,$birth]);
    if($stmt)
        echo true;
    else
        echo false;

}