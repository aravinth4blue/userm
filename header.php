<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration/Login System</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!-- Custom Fonts -->
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS 
    <link rel="stylesheet" href="css/creative.css" type="text/css">-->
	

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- custom Script -->
    <script src="js/script.js"></script>
    <script type="text/javascript" src="js/script_update.js"></script>  
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet">
<script  type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script  type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <script type="text/javascript" src="js/script1.js"></script>    
    <!-- DataTables CSS 
 <link rel="stylesheet" type="text/css" href="/DataTables-1.10.7/media/css/jquery.dataTables.css">  
 <!-- jQuery -->
 <!--<script type="text/javascript" charset="utf8" src="/DataTables-1.10.7/media/js/jquery.js"></script> --> 
 <!-- DataTables 
 <script type="text/javascript" charset="utf8" src="/DataTables-1.10.7/media/js/jquery.dataTables.js"></script>-->

</head>

<body id="page-top">
<header>
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
			

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <?php
                   if(isset($_SESSION['usertype'])){
							$usertype =		$_SESSION['usertype'];
							
						if($usertype==0)
						{
							echo " <li><a href='editprofile.php'>Edit profile</a></li>";
							echo " <li><a href='logout.php'>Logout</a></li>";
						}else if($usertype==1){
							echo " <li><a href='editprofile.php'>Edit profile</a></li>";
							echo " <li><a href='admin.php'>Dashboard</a></li>";
							echo " <li><a href='logout.php'>Logout</a></li>";
						}
					}else{
						echo "<li><a href='reg.php'>Register</a></li>";
						echo "<li><a href='login.php'>Login</a></li>";
					}
					?>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>
<div class="container-fluid">