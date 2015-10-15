<?php 
include 'header.php';
require('config.php');
if(isset($_SESSION['usertype'])=="admin"){
if(isset($_GET['id'])){
	$id=$_GET['id'];
}
if(isset($_POST['delete'])){
	$id=$_POST['id'];
	$delete_qry		="Delete from tbl_reg where id=".$id;
	
	$data 			= mysqli_query($conn,$delete_qry)or die(mysqli_error($conn));
	if($data){
	echo "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>Success</strong> Deleted sucessfully</div>";
	header("Location: admin.php");
	}
}
?>
<div class="row">
        <div class="row">
            <h3>Delete a User</h3>
        </div>
    <form method="POST" name="delete" action="delete.php">
        <input type="hidden" name="id" value="<?php echo $id;?>" />
        <p class="bg-danger" style="padding: 10px;">Are you sure to delete ?</p>
        <div class="form-actions">
            <button type="submit" name="delete" class="btn btn-danger">Yes</button>
            <a class="btn btn btn-default" href="admin.php">No</a>
        </div>
    </form>
                
    </div> <!-- /row -->
 <?php 
 }
 ?>