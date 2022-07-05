<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teacher registration</title>
<link href="studentregistraton.css" rel="stylesheet">
</head>
<body style="background:white;">
<h1 class="heading" >Teachers Registration</h1>
<div align="center" class="maindiv">
<form action="teacherregistration" class="form" onsubmit="return validate()"  method="post">
<label>Teacher Id</label>
<input type="text" class="forminput" id="id" name="ttid"><br>
<span id="tid1" class="spanforminput"></span><br><br>
<label>Name</label>
<input type="text" class="forminput" id="name" name="ttname"><br>
<span id="tname1" class="spanforminput"></span><br><br>
<label>Email</label>
<input type="email" class="forminput" id="email" name="ttemail"><br>
<span id="email1" class="spanforminput"></span><br><br>
<label>Mobile</label>
<input type="tel" class="forminput" id="mobile" name="ttmobile"><br>
<span id="mobile1" class="spanforminput"></span><br><br>
<label>Address</label>
<input type="text" class="forminput" id="address" name="ttaddress"><br>
<span id="address1" class="spanforminput"></span><br><br>
<input type="submit" class="forminput" id="pin" value="submit">
</form>
<script>
function validate(){
	var tid=document.getElementById("id").value;
	if(tid==""){
		document.getElementById("tid1").innerHTML="**fill your firstname";
		return false;
	}
	
	var tname=document.getElementById("name").value;
	if(tname==""){
		document.getElementById("tname1").innerHTML="**fill your lastname";
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
	
	
		alert("successfully registered!!!");
		
}
</script>
</div>
</body>
</html>