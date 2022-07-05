package conn.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class studentregistrationservlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String fname,lname,email,mobile,address,pin;

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		fname=req.getParameter("strfname");
		lname=req.getParameter("strlname");
		email=req.getParameter("stremail");
		mobile=req.getParameter("strmobile");
		address=req.getParameter("straddress");
		pin=req.getParameter("strpin");
		PrintWriter o=res.getWriter();
		
//		o.println("successfully registered");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/school","user","password");
			//o.println("Data is inserted !!");
		  String query="INSERT INTO student(firstname,lastname,email,mobile,address,pin) VALUES(?,?,?,?,?,?)";
////			String query="INSERT INTO register VALUES(?,?,?,?)";
//			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,fname);
			ps.setString(2,lname);
			ps.setString(3,email);
			ps.setString(4,mobile);
			ps.setString(5,address);
			ps.setString(6,pin);
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
