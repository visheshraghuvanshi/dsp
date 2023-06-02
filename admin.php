<?php
session_start();
include('connect.php');
if($_SESSION['role'] != "Admin"){ 
    header('Location: index.php');
}
$search = NULL;
if( isset($_POST['search']) ){
    $search = $_POST['search'];
}
if($search != NULL){
    $sql = "select * from users where username like '%$search%'";
}
else{
    $sql = "select * from users";
}
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
        <style>
            .admForm input {
            margin: 5px 10px 5px;
            padding: 10px;
        }
        </style>
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

        <center>
            <form action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] ); ?>" method="post" enctype="multipart/form-data" >
                <input name="search" id="search" type="text" title="Search Users" placeholder="Search Users">
                <i class="material-icons" id="sign">search</i>
                <input name="submit" type="submit" value="Search" class="up-in" id="qsearch">
            </form>
        <?php
        if ($result->num_rows > 0){
            while($row = $result->fetch_assoc() ){
        ?>
        <form class="admForm" action="adminUpdate.php" method="get" enctype="multipart/form-data" >
        <br><input name="oldusername" id="oldusername" title="oldusername" placeholder="oldUserName" value="<?php echo $row["username"] ?>" type="hidden"><br>
            <label for="username">Username : </label>
            <input name="username" id="username" title="username" placeholder="UserName" value="<?php echo $row["username"] ?>"><br>
            <label for="name">Name : </label>
            <input name="uname" id="uname" title="uname" placeholder="Name" value="<?php echo $row["name"] ?>">
            
            <select name="role" id="role" style="position: relative;top: 25px;right: 50px;">
            <option value="Student" <?php if($row["roles"] == "Student") : ?>Selected<?php endif; ?>>Student</option>
            <option value="Faculty" <?php if($row["roles"] == "Faculty") : ?>Selected<?php endif; ?>>Faculty</option>
            <option value="Admin" <?php if($row["roles"] == "Admin") : ?>Selected<?php endif; ?>>Admin</option>
            </select><br><br><br><br>
            <input name="submit" type="submit" value="Submit" class="up-in" id="asearch">
        </form>
        <?php
        }
            } else {
	            echo "0 records";
            }
        
        ?>
        </center>
    </body>
</html>