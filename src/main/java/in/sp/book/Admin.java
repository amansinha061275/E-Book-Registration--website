package in.sp.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Adminform")
public class Admin extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out = resp.getWriter();
	   resp.setContentType("text/html");
	   
	   String myuser= req.getParameter("user");
	   String mypass=req.getParameter("pass");
	   
	   try
	   {
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
		   PreparedStatement ps= con.prepareStatement("select * from admin where user=? and pass=?");

		   ps.setString(1, myuser);
		   ps.setString(2, mypass);
		   
		   ResultSet rs= ps.executeQuery();
		   
		   if(rs.next())
		   {
			  // HttpSession session= req.getSession(true);
			   //req.setAttribute("adminname", "admin");
			   
			   HttpSession session =req.getSession();
			   session.setAttribute("adminname", rs.getString("user"));
			   
			   RequestDispatcher rd= req.getRequestDispatcher("/admindatashow.jsp");
			   rd.include(req, resp);
		   }else
		   {
			   out.print("<h6 style='color:red'>invalid user and password</h6>");
			   RequestDispatcher rd= req.getRequestDispatcher("/Admin.jsp");
			   rd.include(req, resp);
		   }
		   
		   
	   }catch(Exception e)
	   {
		   e.printStackTrace();
		   out.print("<h6 style='color:red'>"+e.getMessage()+"</h6>");
		   RequestDispatcher rd= req.getRequestDispatcher("/Admin.jsp");
		   rd.include(req, resp);
	   }

}
}
