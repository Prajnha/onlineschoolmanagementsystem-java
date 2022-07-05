<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home page</title>
<link href="homepage.css" rel="stylesheet">
</head>
<body class="home_main">
<header>
<h1>GYAN VIDYALAYA</h1>
</header>
<br><br>
<div class="home_main_div" >
<button onclick="home1()">Student registration</button><br><br><br>
<button onclick="home2()">Student details</button><br><br><br>
<button onclick="home3()">Teacher registration</button><br><br><br>
<button onclick="home4()">Teacher details</button><br><br><br>
</div>
<script>
function home1(){
	window.location.href="studentregistration.jsp";
}
function home2(){
	window.location.href="studentdetails.jsp";
}
function home3(){
	window.location.href="teacherregistration.jsp";
}
function home4(){
	window.location.href="tacherdetails.jsp";
}
</script> 
</body>
</html>