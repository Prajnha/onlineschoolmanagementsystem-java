
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student details page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
<script src= "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
 
</head>
<body>
<%-- <center>
<% --%>
<h1 style=color:red>student details</h1>
<table style=border-color:black;>
<tr>
<td>Firstname   </td>
<td>Lastname     </td>
<td>Email         </td>
<td>Mobile         </td>
<td>Address        </td>
<td>Pincode        </td>
</tr>
</table>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/school","user","password");
String query="SELECT * FROM student";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next()){
	String fname=rs.getString("firstname");
	String lname=rs.getString("lastname");
	String email=rs.getString("email");
	String mobile=rs.getString("mobile");
	String address=rs.getString("address");
	int pin=rs.getInt("pin");
	
	out.println(fname+"     "+lname+"	      "+email+"		        "+mobile+" 		      "+address+"		        "+pin);
	%> 
	</br>
<%	
	out.println("\n");
}

%> 






</body>
</html>