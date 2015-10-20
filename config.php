<?php
define('DB_SERVER', 'openshift.redhat.com');
define('DB_USERNAME', 'admint56uKyw');
define('DB_PASSWORD', ' B8Upacq3JlED');
define('DB_DATABASE', 'reg');

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'admint56uKyw');
define('DB_PASSWORD', 'B8Upacq3JlED');
define('DB_DATABASE', 'php');

$conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD)or die("Cannot connect");
echo "Host information: " . mysqli_get_host_info($conn) . PHP_EOL;
$db=mysqli_select_db($conn,DB_DATABASE) or die("Failed to connect to MySQL: " . mysqli_error($conn));
?>
