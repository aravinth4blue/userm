<?php 
include 'header.php'; 
require('config.php');

if(isset($_SESSION['usertype'])){
echo 'User already logged in';
}
if(isset($_POST['register'])){
	$name 		= mysqli_real_escape_string($conn,$_POST['name']);
	$email 		= mysqli_real_escape_string($conn,$_POST['email']);
	$dob 		= mysqli_real_escape_string($conn,$_POST['dob']);
	$pass 		= mysqli_real_escape_string($conn,$_POST['pass']);
	$cpass 		= mysqli_real_escape_string($conn,$_POST['repass']);
	$mobile 	= mysqli_real_escape_string($conn,$_POST['mobile']);
	$md5_pass 	=md5($pass);
	$md5_cpass 	=md5($cpass);
	$file_name 	=$_FILES['prof_pic']['name'];  
	$temp_name 	=$_FILES['prof_pic']['tmp_name'];
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
	
	$insert_qry = "INSERT INTO `tbl_reg`(`name`, `email`, `dob`, `pass`, `repass`, `mobile`,`profile_pic`) VALUES ('$name','$email','$dob','$md5_pass','$md5_cpass','$mobile','$location')";

	$data 		=  mysqli_query($conn,$insert_qry )or die(mysqli_error($conn));
	if($data){
	
		echo "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>Success</strong> Details registered sucessfully</div>";
	}
	else{
		echo "  <div class='alert alert-error' ><a href='#' class='close' data-dismiss='alert'>&times;</a>
			<strong>Error!</strong> Error occured in Submission of data</div>";
	}
}
?>
<script>
$(document).ready( function () {
$("#dob").datepicker({
dateFormat: 'yy-mm-dd'
});
});
</script>
 <section id="register">


    <div class="alert alert-warning" style="display:none">

        <a href="#" class="close" data-dismiss="alert">&times;</a>

        <strong>Warning!</strong> There was a problem with your network connection.

    </div>
    

    <div class="alert alert-error" style="display:none">

        <a href="#" class="close" data-dismiss="alert">&times;</a>

        <strong>Error!</strong> Error occured in Submission of data

    </div>

<div class="alert alert-success" style="display:none">

    <a href="#" class="close" data-dismiss="alert">&times;</a>

    <strong>Success!</strong> Details registered sucessfully

</div>


				<div class="row">
				<form name="signup" class="form" method="POST" action="reg.php" onSubmit="return validate(this)" enctype="multipart/form-data">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel-body">
									<div class="form-group">
											<label for="name">Name</label>
										<div class="input-group">
											<input type="text" required="" placeholder="Enter Name" id="InputName" name="name" class="form-control">
											<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                              <span id="nameerr"></span>
										</div>
									</div>
									<div class="form-group">
										<label for="email">Email</label>
										<div class="input-group">
											<input type="text" required=""  placeholder="Enter Email" id="email" name="email" class="form-control">
											<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
										</div>
                                        <span id="emailerr"></span>
									</div>
									<div class="form-group">
										<label for="dob">Date of birth</label>
										<div class="input-group">
											<input type="date" required="" placeholder="Enter Date " id="dob" name="dob" class="form-control">
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                            <span id="doberr"></span>
										</div>
									</div>
									
							
									<div class="form-group">
										<label for="InputName">Password</label>
										<div class="input-group">
											<input type="password" required="" placeholder="Enter Password" id="pass" name="pass" class="form-control">
											<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                            <span id="passerr"></span>
										</div>
									</div>
								
								<div class="form-group">
									<label for="InputName">Confirm Password</label>
									<div class="input-group">
										<input type="password" required="" placeholder="Confirm password" id="repass" name="repass" class="form-control">
										<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                        <span id="repasserr"></span>
									</div>
								</div>
								<div class="form-group">
									<label for="InputMessage">Mobile number</label>
									<div class="input-group">
										<input type="text" required=""  placeholder="Enter Mobile no" id="mobile" name="mobile" class="form-control">
										<span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                                        <span id="mobileerr"></span>
									</div>
                                 </div>
                                 <div class="form-group">
									<label for="InputMessage">Profile picture</label>
                            		<div class="input-group">
										<input type="file" id="prof_pic" name="prof_pic" class="btn">
                                        </label>
                                      </div>
                                      <span id="fileerr"></span>
                                 </div>
                                    <div class="form-group">
									<button type="submit" class="btn  btn-primary btn-block" id="submit" name="register">Register</button>
                                    </div>
								</div>
						</div>
				</form>
				</div>
			
			</div>
			</div>
			<div id="errors" class="alert alert-error"></div>
		</div>
		
</section>

<?php include 'footer.php'; ?>