
package conn.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class teacherregistrationservlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String tid,tname,email;
	String address,mobile;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		tid=req.getParameter("ttid");
		tname=req.getParameter("ttname");
		email=req.getParameter("ttemail");
		mobile=req.getParameter("ttmobile");
		address=req.getParameter("ttaddress");
		
		PrintWriter o=res.getWriter();
		/* o.println("successfully registered"); */
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/school","user","password");
			//o.println("Data is inserted !!");
		  String query="INSERT INTO teacher(tid,tname,email,mobile,address) VALUES(?,?,?,?,?)";
////			String query="INSERT INTO register VALUES(?,?,?,?)";
//			
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,tid);
			ps.setString(2,tname);
			ps.setString(3,email);
			ps.setString(4,mobile);
			ps.setString(5,address);
			
			 int rows=ps.executeUpdate();
			 if(rows>0) {
				 o.println("Teacher Registration successfull");
			 }
			
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
		}

}
}

