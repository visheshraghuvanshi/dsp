<?php
    session_start();
    include('connect.php');
    if($_SESSION['role'] != "Admin"){ 
        header('Location: index.php');
    }
    $usname = $_GET["oldusername"];
    $username = $_GET["username"];
    $uname = $_GET["uname"];
    $role = $_GET["role"];
    $sql = "UPDATE users SET username = '$username', name= '$uname', roles= '$role' WHERE username = '$usname';";
    $result = $conn->query($sql);
?>
<!DOCTYPE html>
<html>
    <head>
        <title> DSP </title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/material.css">
        <link type="text/css" rel="stylesheet" href="fonts/font.css">
        <link rel="icon" href="images/icon1.png" >
    </head>
    <body id="ask">
        <!-- navigation bar -->
        <a href="index.php">
            <div id="log">
                <div id="i">d</div><div id="cir">d</div><div id="ntro">SP</div>
            </div>
        </a>
        <ul id="nav-bar">
            <a href="profile.php"><li>Hi, <?php echo $_SESSION["user"]; ?></li></a>
            <a href="logout.php"><li>Log Out</li></a>
        </ul>
        <center><h1><b style="font-size: 1.5em; margin: -60px auto 10px; display: block;">:)</b>Updated Successfully.</h1>
        <form action="admin.php">
            <input name="goBack" type="submit" value="Go Back" class="up-in" id="asearch">
        </form>
    </center>
