<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style>
header{
background:maroon;
color:white;
font:italic bold 30px san-serif;
text-align:center;
padding:20px;
}
.formborder{
border:solid;
padding:70px;
text-align:center;
}
</style>
</head>
<body>
<header>
<h1>GYAN VIDYALAYA</h1>
</header>
<h1>LOGIN HERE!!!</h1>
<div class="formborder">
<form action="Login" method="post" onsubmit=""> 
<!-- <form action="homepage.jsp" method="post"> -->
Enter Email:<input type="email" name="remail"><br><br>
Enter Password:<input type="password" name="rpassword"><br><br>
<label>Enter Captcha:</label>
<div class="form-row">
<div class="form-group col-md-6">
<input type="text" class="form-control" readonly id="capt">
</div>
<div class="form-group col-md-6">
<input type="text" class="form-control" id="textinput">
</div>
</div>
<h6> <img src="C:\Users\Prajina\Downloads" width="30px" onclick="cap()"></h6>
<br>
<input type="submit" value="Login">
<button onclick="validcap()" >submit</button>

<input type="reset" value="cancel">
<script type="text/javascript">
function cap(){
	var alpha=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','1','2','3',
		'4','5','6','7','8','9','0','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w'
		,'x','y','z','!','@','#','$','%','^','&','*','+'];
	var a=alpha[Math.floor(Math.random()*71)];
	var b=alpha[Math.floor(Math.random()*71)];
	var c=alpha[Math.floor(Math.random()*71)];
	var d=alpha[Math.floor(Math.random()*71)];
	var e=alpha[Math.floor(Math.random()*71)];
	var f=alpha[Math.floor(Math.random()*71)];
	
	var final=a+b+c+d+e+f;
	document.getElementById("capt").value=final;
}
function validcap(){
	var stg1=document.getElementById('capt').value;
	var stg2=document.getElementById('textinput').value;
	if(stg1==stg2){
		alert("Form is validated succressfully");
		return true;
	}else{
		alert("Please enter a valid captcha");
	}
} 


</script>
</form>

</div>
</body>
</html>