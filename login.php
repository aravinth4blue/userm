<?php 
include 'header.php';
require('config.php');



	if(isset($_POST['login'])){
		$email 			= mysqli_real_escape_string($conn,$_POST['email']);
		$pass 			= mysqli_real_escape_string($conn,$_POST['pass']);
		$md5_pass 		= md5($pass);
		$select_qry		="SELECT * FROM tbl_reg where email='$email' and pass='$md5_pass'";
		
		$qry 			= mysqli_query($conn,$select_qry)  or die(mysqli_error($conn));
	 	
		
		$count 			= mysqli_num_rows($qry);
		
		
		
		if($count>=1){
					while($row=mysqli_fetch_array($qry,MYSQLI_ASSOC)){
							$_SESSION['name'] 					= $row['name'];
							$_SESSION['email']					=$row['email'];
							$_SESSION['usertype'] 				=$row['usertype'];
							$_SESSION['dob']					=$row['dob'];
							$_SESSION['pass']					=$row['pass'];
							$_SESSION['repass']					=$row['repass'];
							$_SESSION['mobile']					=$row['mobile'];
							$_SESSION['id']						=$row['id'];
							
						  
							$_SESSION['profile_pic']			=$row['profile_pic'];
					}
				if($_SESSION['usertype']=="1"){
							header("Location: admin.php");
				}
				else if($_SESSION['usertype']=="0"){
							header("Location: welcome.php");
				}
			}
	else{
	
			header("Location: error.php");
	}

}


?>
<script>
/*function clicked(form){
var email = signin.email.value;
//var pass =login.pass.value;
alert(email);


}*/
</script>
<section id="login">
			<div class="row">
			<form name="signin" class="form" method="POST" action="login.php" onsubmit="return validate_login(this)">
				<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
					<div class="form-group">
						<label for="InputName">Email</label>
						<div class="input-group">
						<input type="text" required=""  placeholder="Enter Email" id="email" name="email" class="form-control">
						<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
						</div>
					</div>
					<div class="form-group">
						<label for="InputName">	Password</label>
						<div class="input-group">
						<input type="password" required="" placeholder="Enter Password" id="pass" name="pass" class="form-control">
						<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
						</div>
					</div>
					<div class="form-actions">
					<button type="submit" class="btn  btn-primary btn-block" id="submit" name="login">Login</button>
					<a href="fpswd.php" class="btn btn-link" id="fpswd" name="fpswd">Forgot my password </a>
				</div>
				</div>
			</form>
			</div>
			</div>
			
			<div id="errors"></div>
	</div>
	</section>
	<?php 
		include 'footer.php'; 
	?>
	