<?php
include 'header.php'; 

if(isset($_SESSION['usertype'])){
$usertype=$_SESSION['usertype'];
if($usertype=='0'){
?>
<div class="row">
	<div class="col-md-4 col-md-offset-4">
		<div class="panel panel-default">
			<div class="panel-body">
            
			<?php echo "Welcome ".$_SESSION['name'];?>
			
            </div>
          </div>
       </div>
  </div>
<?php 
}
}
include 'footer.php'; 
?>