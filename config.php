<?php
define('DB_SERVER', getenv('OPENSHIFT_MYSQL_DB_HOST'));
define('DB_PORT', getenv('OPENSHIFT_MYSQL_DB_PORT'));
define('DB_USERNAME', getenv('OPENSHIFT_MYSQL_DB_USERNAME'));
define('DB_PASSWORD', getenv('OPENSHIFT_MYSQL_DB_PASSWORD'));
define('DB_DATABASE', getenv('OPENSHIFT_APP_NAME'));

var_dump(DB_SERVER);
var_dump(DB_PORT);
var_dump(DB_DATABASE);

$conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,"",DB_PORT)or die("Cannot connect" .mysqli_error($conn));
var_dump($conn);
$db=mysqli_select_db($conn,DB_DATABASE) or die("Failed to connect to MySQL: " . mysqli_error($conn));
?>
