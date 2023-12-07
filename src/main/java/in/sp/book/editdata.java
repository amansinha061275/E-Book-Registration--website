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
@WebServlet("/edit1")
public class editdata extends HttpServlet
{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
	
		
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
		  
		String mybook=req.getParameter("bookname");
		  String mybooke=req.getParameter("booke");
		  String myprice=req.getParameter("price");
		int id =Integer.parseInt(req.getParameter("idbookr"));
		
		PreparedStatement ps=con.prepareStatement("update Bookregistration set bookname=?,bookedtion=?,bookprice=? where idbookr=?");
		 ps.setString(1, mybook);
		  ps.setString(2, mybooke);
		  ps.setString(3,myprice);
		ps.setInt(4, id);
		
	    int i= ps.executeUpdate();
	    if(i==1)
	    {
	    	out.println("record Edited");
	    }else
	    {
	    	out.println("record not Edited");
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
