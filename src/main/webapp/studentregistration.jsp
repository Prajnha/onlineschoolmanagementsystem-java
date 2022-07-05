<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student registration</title>
<link href="studentregistraton.css" rel="stylesheet">
</head>
<body style="background:white;">
<h1 class="heading" >Student Registration</h1>
<div align="center" class="maindiv">
<form action="studentregistration" class="form" onsubmit="return validate()"  method="post">
<label>First Name</label>
<input type="text" class="forminput" id="fname" name="strfname"><br>
<span id="fname1" class="spanforminput"></span><br><br>
<label>Last Name</label>
<input type="text" class="forminput" id="lname" name="strlname"><br>
<span id="lname1" class="spanforminput"></span><br><br>
<label>Email</label>
<input type="email" class="forminput" id="email" name="stremail"><br>
<span id="email1" class="spanforminput"></span><br><br>
<label>Mobile</label>
<input type="tel" class="forminput" id="mobile" name="strmobile"><br>
<span id="mobile1" class="spanforminput"></span><br><br>
<label>Address</label>
<input type="text" class="forminput" id="address" name="straddress"><br>
<span id="address1" class="spanforminput"></span><br><br>
<label>Pin</label>
<input type="text" class="forminput" id="pin" name="strpin"><br>
<span id="pin1" class="spanforminput"></span><br><br><br>
<input type="submit" class="forminput" id="pin" value="submit">
</form>
<script>
function validate(){
	var fname=document.getElementById("fname").value;
	if(fname==""){
		document.getElementById("fname1").innerHTML="**fill your firstname";
		return false;
	}
	
	var lname=document.getElementById("lname").value;
	if(lname==""){
		document.getElementById("lname1").innerHTML="**fill your lastname";
		return false;
	}
	
	var email=document.getElementById("email").value;
	if(email==""){
		document.getElementById("email1").innerHTML="**fill your email";
		return false;
	}
	
	var mobile=document.getElementById("mobile").value;
	if(mobile==""){
		document.getElementById("mobile1").innerHTML="**fill your mobile number";
		return false;
	}
	var mobile=document.getElementById("mobile").value;
	if(isNaN(mobile)){
		document.getElementById("mobile1").innerHTML="**fill number";
		return false;
	}
	
	var address=document.getElementById("address").value;
	if(address==""){
		document.getElementById("address1").innerHTML="**fill your address";
		return false;
	}
	
	var pin=document.getElementById("pin").value;
	if(pin==""){
		document.getElementById("pin1").innerHTML="**fill your pin";
		return false;
	}
	if(isNaN(pin)){
		document.getElementById("pin1").innerHTML="**fill pincode properly";
		return false;
	}
	
		alert("successfully registered!!!");
		
}
</script>
</div>
</body>
</html>