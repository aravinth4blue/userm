<?php
define('DB_SERVER', 'openshift.redhat.com');
define('DB_USERNAME', 'admint56uKyw');
define('DB_PASSWORD', ' B8Upacq3JlED');
define('DB_DATABASE', 'reg');
$conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD)or die("Cannot connect");
$db=mysqli_select_db($conn,DB_DATABASE) or die("Failed to connect to MySQL: " . mysqli_error($conn));
?>
