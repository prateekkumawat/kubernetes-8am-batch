<?php
include "config.php";

if ($_POST) {
    $email = $_POST["email"];
    $password = $_POST["password"];

    $stmt = $conn->prepare("SELECT id,password FROM users WHERE email=?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->bind_result($id, $hash);
    $stmt->fetch();

    if ($id && password_verify($password, $hash)) {
        $_SESSION["user"] = $id;
        header("Location: dashboard.php");
    } else {
        $error = "Invalid login";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title>Login</title>
</head>
<body>
<div class="container">
<h2>Login</h2>
<form method="post">
<input name="email" type="email" placeholder="Email" required>
<input name="password" type="password" placeholder="Password" required>
<button>Login</button>
</form>
<p style="color:red"><?= $error ?? "" ?></p>
<p><a href="register.php">Create account</a></p>
</div>
</body>
</html>
