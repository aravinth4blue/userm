<?php
include 'header.php';
require('config.php');

if(isset($_SESSION['usertype'])){
if(isset($_POST['edit'])){
	$name 		= mysqli_real_escape_string($conn,$_POST['name']);
	$email 		= mysqli_real_escape_string($conn,$_POST['email']);
	$dob 		= mysqli_real_escape_string($conn,$_POST['dob']);
	$pass 		= mysqli_real_escape_string($conn,$_POST['pass']);
	$cpass 		= mysqli_real_escape_string($conn,$_POST['repass']);
	$mobile 	= mysqli_real_escape_string($conn,$_POST['mobile']);
	$md5_pass 	=md5($pass);
	$md5_cpass 	=md5($cpass);
	$file_name 	=$_FILES['update_pic']['name'];  
	$temp_name 	=$_FILES['update_pic']['tmp_name'];
	if(isset($name)){
	 if(!empty($name)){  
	  $location = 'uploads/';      
            if(move_uploaded_file($temp_name, $location.$file_name)){
                //echo 'uploaded';
            }
			}       
    }  else {
        //echo 'please uploaded';
    }
	$location =$location.$file_name;
	if(isset($_SESSION['id'])){ $id=$_SESSION['id'];}
	$update_qry="UPDATE `tbl_reg` SET `name`='$name',`dob`='$dob',`pass`='$md5_pass',`repass`='$md5_cpass',`mobile`='$mobile',`profile_pic`='$location' where `id`=".$id;
	
$data 					= mysqli_query($conn,$update_qry)or die(mysqli_error($conn));
if($data){
echo "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>Success</strong> Details updated sucessfully</div>";
}
else{
echo "  <div class='alert alert-error' ><a href='#' class='close' data-dismiss='alert'>&times;</a>
			<strong>Error!</strong> Error occured in Updation of data</div>";
}
}
?>
 <section id="editprofile">
 <div class="row">
				<form name="update" class="form-horizontal" method="POST" action="editprofile.php" onSubmit="return validate_update(this)" enctype="multipart/form-data" >
                <div class="container">
                    <h1>Edit Profile</h1>
                    <hr>
                    <div class="row">
                      <!-- left column -->
                      <div class="col-md-3">
                        <div class="text-center">
                          <img src="<?php  echo  $_SESSION['profile_pic']; ?>" class="avatar img-circle" alt="avatar">
                          <h6>Upload a different photo...</h6>
                          
                          <input type="file"  id="update_pic" name="update_pic" class="btn">
                        </div>
     				 </div>
					<div class="col-md-9 personal-info">
						
							
									<div class="form-group">
											<label for="InputName">Name</label>
										<div class="input-group">
											<input type="text" required="" placeholder="Enter Name" id="InputName" name="name" class="form-control" value="<?php echo $_SESSION['name']; ?>">
											<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
										</div>
									</div>
									<div class="form-group">
										<label for="InputName">Email</label>
										<div class="input-group">
											<input type="text" required="" placeholder="Enter Email" id="email" name="email" class="form-control" value="<?php echo $_SESSION['email']; ?>">
											<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
										</div>
									</div>
									<div class="form-group">
										<label for="InputName">Date of birth</label>
										<div class="input-group">
											<input type="date" required="" placeholder="Enter Date " id="dob" name="dob" class="form-control" value="<?php echo $_SESSION['dob']; ?>">
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
									
									<div class="form-group">
										<label for="InputName">Password</label>
										<div class="input-group">
											<input type="password" required="" placeholder="Enter Password" id="pass" name="pass" class="form-control" value="">
											<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
										</div>
									</div>
								
								<div class="form-group">
									<label for="InputName">Confirm Password</label>
									<div class="input-group">
										<input type="password" required="" placeholder="Confirm password" id="repass" name="repass" class="form-control" value="">
										<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
									</div>
								</div>
								<div class="form-group">
									<label for="InputMessage">Mobile number</label>
									<div class="input-group">
										<input type="text" required="" placeholder="Enter Mobile no" id="mobile" name="mobile" class="form-control" value="<?php echo $_SESSION['mobile']; ?>">
										<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
									</div>
									<button type="submit" class="btn btn-default" id="submit" name="edit">Update</button>
								</div>
						</div>
				</form>
				
                </div>
 </section>

<?php 
}else{
header("Location: error_authorize.php");
}
include 'footer.php'; 
?>
