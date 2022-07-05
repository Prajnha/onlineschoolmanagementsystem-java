package conn.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Thread.State;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class login_servlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String email,pswd;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		email=req.getParameter("remail");
		pswd=req.getParameter("rpassword");
		PrintWriter out=res.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/school","user","password");
			Statement stmt=con.createStatement();
			String query="select * from register where email='"+email+"' and password='"+pswd+"'";
			ResultSet rs=stmt.executeQuery(query);
//			if(rs.next()) {
//				out.println("login successful");
//			}else {
//				out.println("login fails!!!");
//			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
}
