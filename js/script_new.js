
//Not less than 3 chars and not more than 20 only combination of letters and words
var ck_name 				= /^[A-Za-z]{3,20}$/;
//var ck_name = /^[A-Za-z0-9]{3,20}$/;For user name 
//Only email address 
var ck_email 				= /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
//var ck_username = /^[A-Za-z0-9_]{1,20}$/;
//ck_password combination of letters,numbers,symbols and length should not exceed 20 
var ck_password 			=  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
//ck_mob only numbers
//Date should be in YYYY-MM-DD
var ck_dob 					=/^\d{4}-\d{1,2}-\d{1,2}$/;
//Only numbers for mobile
var ck_mob 					= /^\d{10}$/;
var ck_type 				=/(\.img|\.jpeg|\.jpg|\.png)$/
function validate(form){
var name					= signup.name.value;
var email 					= signup.email.value;
var dob 					= signup.dob.value;

var pass 					=signup.pass.value;
var repass 					=signup.repass.value;
var mob 					=signup.mobile.value;
var file_name 				=signup.prof_pic.value;
var errors 					= [];
var error 					=document.getElementById('errors');
var namerror				=document.getElementById('nameerr');
var emailerr				=document.getElementById('emailerr');
var doberr					=document.getElementById('doberr');
var passerr					=document.getElementById('passerr');
var repasserr				=document.getElementById('repasserr');
var mobileerr				=document.getElementById('mobileerr');
var fileerr					=document.getElementById('fileerr');
if(!name){
	errors					= "Name should n't be empty<br> ";
	 namerror.innerHTML				= errors;
	return false;
  }
  if(!email){
	errors			 				= "Email should n't be empty<br> ";
	emailerr.innerHTML				= errors;
	return false;
  }
  if(!dob){
	errors					 		= "DOB should n't be empty<br> ";
	doberr.innerHTML				= errors;
	return false;
  }
   if(!pass){
	errors				 		= "password should n't be empty<br> ";
	passerr.innerHTML				= errors;
	return false;
  }
   if(!repass){
	errors 		= "repass should n't be empty<br> ";
	repasserr.innerHTML				= errors;
	return false;
  }
   if(!mob){
	errors 		= "Mobile should n't be empty<br> ";
	mobileerr.innerHTML				= errors;
	return false;
  }
 if (!ck_name.test(name)) {
  errors 		= "Enter a valid Name<br> ";
  namerror.innerHTML				= errors;
  return false;
  
 }
 if(pass!=repass){
 	errors[errors.length] 		="Passwords not match<br>";
	passerr.innerHTML				= errors;
	return false;
	
 }
 if (!ck_email.test(email)) {
  	errors 		= "Enter a valid email address <br>";
	emailerr.innerHTML				= errors;
	return false;
 }
 if(!ck_dob.test(dob)){
	 errors 		= "Date should be in valid format <br>";
	 doberr.innerHTML				= errors;
	 return false;
 }
 if(!ck_type.test(file_name)){
	  errors 		= "File Format not valid";
	  return false;
	 }
 /*if (!ck_username.test(username)) {
  errors[errors.length] = "You valid UserName no special char .";
 }*/
 if (!ck_password.test(pass)) {
 	 errors[errors.length] 		= "Password in num,symbols &char <br> ";
	 passerr.innerHTML				= errors;
	 return false;
 }
 if (!ck_password.test(repass)) {
  	errors[errors.length] 		= "Confirm Password in num,symbols &char <br>";
	repasserr.innerHTML				= errors;
	return false;
 }
 if(!ck_mob.test(mob)){
 	errors[errors.length] 		= "Mobile number not exceeding 10 digits <br>";
	mobileerr.innerHTML				= errors;
	return false;
 }
 
 /*if (errors.length > 0) {

  //reportErrors(errors);
  error.innerHTML				= errors;
  return false;
 }*/
  return true;
}
/*function reportErrors(errors){
 var msg = "Please Enter Valide Data...\n";
 
 for (var i = 0; i<errors.length; i++) {
 var numError = i + 1;
  msg += "\n" + numError + ". " + errors[i];
}


 alert(msg);
}*/



