<?php
include "config.php";
if (!isset($_SESSION["user"])) {
    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title>Dashboard</title>
</head>
<body>
<div class="container">
<h2>Welcome 🎉</h2>
<p>You are logged in.</p>
<a href="logout.php">Logout</a>
</div>
</body>
</html>
