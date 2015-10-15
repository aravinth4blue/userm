
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
function validate_update(form){
var name					= update.name.value;
var email 					= update.email.value;
var dob 					= update.dob.value;

var pass 					=update.pass.value;
var repass 					=update.repass.value;
var mob 					=update.mobile.value;

var errors 					= [];
var error 					=document.getElementById('errors');
if(!name){
	errors[errors.length]	= "Name should n't be empty<br> ";
}
if(!email){
	errors[errors.length]	= "Email should n't be empty<br> ";
}
if(!pass){
	errors[errors.length]	= "Pass should n't be empty<br> ";
}
if(!repass){
	errors[errors.length]	= "Confirm password should n't be empty<br> ";
}
if(!mob){
	errors[errors.length]	= "Mobile no should n't be empty<br> ";
}

 if (!ck_name.test(name)) {
  errors[errors.length] 		= "Enter a valid Name<br> ";
  
 }
 if(pass!=repass){
 	errors[errors.length] 		="Passwords not match<br>";
	
 }
 if (!ck_email.test(email)) {
  	errors[errors.length] 		= "Enter a valid email address <br>";
 }
 if(!ck_dob.test(dob)){
	 errors[errors.length] 		= "Date should be in valid format <br>";	 
 }
 /*if (!ck_username.test(username)) {
  errors[errors.length] = "You valid UserName no special char .";
 }*/
 if (!ck_password.test(pass)) {
  errors[errors.length] 		= "Password in num,symbols &char <br> ";
 }
 if (!ck_password.test(repass)) {
  errors[errors.length] 		= "Confirm Password in num,symbols &char <br>";
 }
 if(!ck_mob.test(mob)){
 	errors[errors.length] 		= "Mobile number not exceeding 10 digits <br>";
 }
 
 if (errors.length > 0) {

  //reportErrors(errors);
  error.innerHTML				= errors;
  return false;
 }
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



