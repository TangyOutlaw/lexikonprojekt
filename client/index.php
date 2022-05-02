<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lexikon projekt</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <style>
        .container{
            border-radius: 2%;
            margin-top: 10px;
        }
        .row{
            margin: 40px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <nav class="navbar navbar-expand-sm navbar.dark bg-dark">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="index.php" class="nav-link">Főoldal</a></li>
                <li class="nav-item"><a href="index.php?pg=szavak.php" class="nav-link">Szavak</a></li>
                <li class="nav-item"><a href="index.php?pg=leckek.php" class="nav-link">Leckék</a></li>
                <li class="nav-item"><a href="index.php?pg=mondat.php" class="nav-link">Beszédsegítő</a></li>
                <?php
                    if(isset($_SESSION['role']) && $_SESSION['role'] == 'admin'):
                ?>
                <li class="nav-item"><a href="index.php?pg=modositas.php" class="nav-link">Szavak</a></li>
                <?php
                    endif
                ?>
                <li class="nav-item"><a href="index.php?pg=kapcsolatok.php" class="nav-link">Kapcsolatok</a></li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <?php
                    if(isset($_SESSION['user'])):
                ?>
                <li class="nav-item"><a href="#" class="nav-link"><?=$_SESSION['user']?></a></li>
                <li class="nav-item"><a href="../server/logout.php" class="nav-link">Logout</a></li>
                <?php
                    else:
                ?>
                <li class="nav-item"><a href="index.php?pg=auth/login.php" class="nav-link">Login</a></li>
                <li class="nav-item"><a href="index.php?pg=auth/register.php" class="nav-link">Register</a></li>
                <?php
                    endif
                ?>
            </ul>
        </nav>
    </div>

    <div class="container p-3 max">
        <?php
        if(isset($_GET["pg"]))
            include $_GET["pg"];
        else
            include "fooldal.php";
        ?>
    </div>
    <script src="menuHighlights.js"></script>
</body>
</html>