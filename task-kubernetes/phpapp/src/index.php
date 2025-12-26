<?php
// Get client IP address
$ip = $_SERVER['REMOTE_ADDR'] ?? 'Unknown';

// Run a Linux command (e.g., 'uname -a')
$command = 'uname -a';
$output = shell_exec($command);
$command_id = 'ps';

// Output the results
?>
<!DOCTYPE html>
<html>
<head>
    <title>IP and Linux Command Info</title>
</head>
<body>
    <h2>Your IP Address:</h2>
    <p><?php echo htmlspecialchars($ip); ?></p>
    
    <h2>Your Current user details:</h2>
    <p><?php echo htmlspecialchars($command_id); ?></p>

    <h2>Linux Command Output (uname -a):</h2>
    <pre><?php echo htmlspecialchars($output); ?></pre>
</body>
</html>