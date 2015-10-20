<?php
define('DB_SERVER', getenv('OPENSHIFT_MYSQL_DB_HOST') . ':' . getenv('OPENSHIFT_MYSQL_DB_PORT'));
define('DB_USERNAME', getenv('OPENSHIFT_MYSQL_DB_USERNAME'));
define('DB_PASSWORD', getenv('OPENSHIFT_MYSQL_DB_PASSWORD'));
define('DB_DATABASE', getenv('OPENSHIFT_APP_NAME'));



$conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD)or die("Cannot connect");
echo "Host information: " . mysqli_get_host_info($conn) . PHP_EOL;
$db=mysqli_select_db($conn,DB_DATABASE) or die("Failed to connect to MySQL: " . mysqli_error($conn));
?>
