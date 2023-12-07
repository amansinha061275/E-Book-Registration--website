package in.sp.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deleteurl")
public class delete extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
	
		
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
		
		  int id =Integer.parseInt(req.getParameter("idbookr"));
		PreparedStatement ps=con.prepareStatement("delete from Bookregistration where idbookr=? ");
		
		ps.setInt(1, id);
		
	    int i= ps.executeUpdate();
	    if(i==1)
	    {
	    	out.println("record deleted");
	    }else
	    {
	    	out.println("record not deleted");
	    }
	    out.print("&nbsp  &nbsp  <br>");
	   out.print("<a href='adminshow'>show data</a> ");
	   out.print("&nbsp  &nbsp  <br>");
	  
	 
		
		}catch(Exception e)
		{
			System.out.println(e);
		}


}
}
