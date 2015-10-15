var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
//var ck_username = /^[A-Za-z0-9_]{1,20}$/;
//ck_password combination of letters,numbers,symbols and length should not exceed 20 
var ck_password =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
function validate_login(form){
var email = signin.email.value;
var pass =signin.pass.value;
var errors = [];

var error =document.getElementById('errors');
/*if(!email){
	errors[errors.length] = "please fill Email address.";
}
if(!pass){
	errors[errors.length] = "please fill Password.";
}*/
 if (!ck_email.test(email)) {
  errors[errors.length] = "Enter a valid email address.";
 }
 if (!ck_password.test(pass)) {
  errors[errors.length] = "Password in num,symbols &char ";
 }
  if (errors.length > 0) {

  //reportErrors(errors);
  error.innerHTML= errors;
  return false;
 }
   return true;
  }
/*function reportErrors(errors){
 var msg = "Please Enter Valid Data...\n";
 for (var i = 0; i<errors.length; i++) {
 var numError = i + 1;
  msg += "\n" + numError + ". " + errors[i];
}
 alert(msg);
}*/
