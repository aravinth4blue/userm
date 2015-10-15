<?php 

include 'header.php';
require('config.php');
if(isset($_SESSION['usertype'])=="admin"){
if(isset($_GET['id'])){
	$id=$_GET['id'];
}
$select_qry 	="Select * from tbl_reg where id=".$id;
$result 		=  mysqli_query($conn,$select_qry )or die(mysqli_error($conn));
while($row=mysqli_fetch_array($result,MYSQLI_BOTH)){
?>
<div class="col-sm-12">
        <div class="row">
            <h3>Read a User</h3>
        </div>
            
        <div class="form-group col-sm-12">
            <label class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
              <p class="form-control-static"><?php echo $row['name'];?></p>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <label class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
              <p class="form-control-static"><?php echo $row['email'];?></p>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <label class="col-sm-2 control-label">dob</label>
            <div class="col-sm-10">
              <p class="form-control-static"><?php echo $row['dob'];?></p>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <label class="col-sm-2 control-label">Mobile</label>
            <div class="col-sm-10">
              <p class="form-control-static"><?php echo $row['mobile'];?></p>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <a class="btn btn btn-default" href="admin.php">Back</a>
        </div>
    </div>   
    <?php 
	}
	}
	?>       