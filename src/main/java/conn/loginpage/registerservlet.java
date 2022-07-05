package conn.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerservlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String user,email,password1,password2;

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		user=req.getParameter("rusername");
		email=req.getParameter("remail");
		password1=req.getParameter("rpassword");
		password2=req.getParameter("rcpassword");
		PrintWriter o=res.getWriter();
		
//		o.println(user+" successfully registered");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/school","user","password");
			//o.println("Data is inserted !!");
		  String query="INSERT INTO register(username,email,password,cpassword) VALUES(?,?,?,?)";
////			String query="INSERT INTO register VALUES(?,?,?,?)";
//			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,user);
			ps.setString(2,email);
			ps.setString(3,password1);
			ps.setString(4,password2);
			 int rows=ps.executeUpdate();
			 if(rows>0) {
				 o.println("Registration successfully");
			 }
			
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
		}

}
}