<?php
include "config.php";

if ($_POST) {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO users(name,email,password) VALUES (?,?,?)");
    $stmt->bind_param("sss", $name, $email, $password);
    $stmt->execute();

    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title>Register</title>
</head>
<body>
<div class="container">
<h2>Register</h2>
<form method="post">
<input name="name" placeholder="Name" required>
<input name="email" type="email" placeholder="Email" required>
<input name="password" type="password" placeholder="Password" required>
<button>Register</button>
</form>
<p><a href="login.php">Already have an account?</a></p>
</div>
</body>
</html>
<?php
include "config.php";

if ($_POST) {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO users(name,email,password) VALUES (?,?,?)");
    $stmt->bind_param("sss", $name, $email, $password);
    $stmt->execute();

    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title>Register</title>
</head>
<body>
<div class="container">
<h2>Register</h2>
<form method="post">
<input name="name" placeholder="Name" required>
<input name="email" type="email" placeholder="Email" required>
<input name="password" type="password" placeholder="Password" required>
<button>Register</button>
</form>
<p><a href="login.php">Already have an account?</a></p>
</div>
</body>
</html>
