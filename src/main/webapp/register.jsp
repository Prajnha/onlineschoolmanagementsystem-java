<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="register.css" rel="stylesheet">
</head>
<body style="display:wrap;">
<header>
<h1>GYAN VIDYALAYA</h1>
</header>
<h3>REGISTER HERE!!!</h3>
<div class="formborder">
<form action="register" method="post">
	Username:<input type="text" placeholder="enter username" name="rusername"><br><br>
	Email : <input  type="text" placeholder="enter email" name="remail"><br><br>
	Password:<input  type="password" placeholder="enter password" name="rpassword"><br><br>
	Confirm Password:<input type="password"  placeholder="confirm password" name="rcpassword"><br><br><br>
<input type="submit" value="Register">
<input type="reset" value="cancel">
<p>Already Registered?<p>
<!-- <button type="button" <a onclick="login.jsp"></a>></button>>Login</button> -->
<a href="login.jsp">LOGIN</a> 
</form>
</div>
<footer>
<h6>Email:gyan@vidyalaya.com</h6>
<h6>Contact no:7879864578</h6>
</footer>
</body>
</html>