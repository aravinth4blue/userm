<?php 
include 'header.php';
require('config.php');
if(isset($_POST['reset'])){
$email 				= mysqli_real_escape_string($conn,$_POST['email']);
$newpass 			= mysqli_real_escape_string($conn,$_POST['new_pass']);
$md5_newpass 		= md5($newpass );
$renewpass 			= mysqli_real_escape_string($conn,$_POST['renew_pass']);
$md5_renewpass 		= md5($renewpass );
$update_qry 		="UPDATE `tbl_reg` SET `pass`='$md5_newpass',`repass`='$md5_renewpass' where `email`= '$email'";

$data 					= mysqli_query($conn,$update_qry)or die(mysqli_error($conn));
if($data){
echo "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert'>&times;</a><strong>Success</strong> Password Reset sucess</div>";
}
else{
echo "  <div class='alert alert-error' ><a href='#' class='close' data-dismiss='alert'>&times;</a>
			<strong>Error!</strong> Password reset failed</div>";
}



}
 ?>
<section id="fpswd">
<div class="container-fluid">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3 class="text-center">Forgot Password?</h3>
                          <p>If you have forgotten your password - reset it here.</p>
                            <div class="panel-body">
              
                              
                              <form name="fpswd" method="post" action="fpswd.php" class="form"><!--start form--><!--add form action as needed-->
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      
                                      <!--EMAIL ADDRESS-->
                                      <input id="email" name="email" placeholder="Email address" class="form-control" required="" type="email">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group">
                                  		<input type="password" required="" placeholder="New Password" id="pass" name="new_pass" class="form-control">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
									</div>
                                 </div> 
                                 <div class="form-group">
                                    <div class="input-group">
                                    <!--OLD PASSWORD-->
                                  		<input type="password" required="" placeholder=" Retype New Password" id="pass" name="renew_pass" class="form-control">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
									</div>
                                 </div>  
                                  
                                  <div class="form-group">
                                  <!--CONFIRM NEW PASSWORD-->
                                    <button name="reset" class="btn btn-lg btn-primary btn-block"  type="submit">Reset Password</button>
                                  </div>
                                </fieldset>
                              </form><!--/end form-->
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<?php include 'footer.php'; ?>
