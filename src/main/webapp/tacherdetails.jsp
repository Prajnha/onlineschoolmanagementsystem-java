<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student details page</title>
</head>
<body>
<%-- <center>
<% --%>
<h1 style=color:red>Teachers details</h1>
<table style=border-color:black;>
<tr>
<td>Teacher Id  </td>
<td>Name   </td>
<td>Email         </td>
<td>Mobile         </td>
<td>Address        </td>

</tr>
</table>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/school","user","password");
String query="SELECT * FROM teacher";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);

while(rs.next()){
	String fname=rs.getString("tid");
	String lname=rs.getString("tname");
	String email=rs.getString("email");
	String mobile=rs.getString("mobile");
	String address=rs.getString("address");
	
	
	out.println(fname+"     "+lname+"	      "+email+"		        "+mobile+" 		      "+address);
	%> 
	<br>
<%	
	out.println("\n");
}

%> 






</body>
</html>