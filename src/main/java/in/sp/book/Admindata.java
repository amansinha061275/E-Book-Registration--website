package in.sp.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/adminshow")
public class Admindata extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   PrintWriter out=resp.getWriter();
		resp.setContentType("text/html");
	
		
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
		
		PreparedStatement ps=con.prepareStatement("select idbookr,bookname,bookedtion,bookprice from Bookregistration");
		
		
		ResultSet rs=ps.executeQuery();
		 //HttpSession session= req.getSession(true);
		//String Admin=(String)req.getAttribute("adminname"); 
		//out.println("welcome :"+Admin);
		
	
		
		 out.println("<table border='1' align='center'>");
		 out.println("<tr>");
		 out.println("<th>ID</th>");
		 out.println("<th>Book Name</th>");
		 out.println("<th>Book Edtion</th>");
		 out.println("<th>Book Price</th>");
		 
		 out.print("<th><a href='admindata.jsp'>Show</a></th>");
		 out.println("</tr>");
	    	 
		 while(rs.next())
		 {
			 out.println("<tr>");
			 out.println("<td>"+rs.getInt(1)+"</td>");  
			 out.println("<td>"+rs.getString(2)+"</td>");         
			 out.println("<td>"+rs.getString(3)+"</td>");         
			 out.println("<td>"+rs.getString(4)+"</td>"); 
			  
			 out.println("<td><a href='editurl?idbookr="+rs.getInt(1)+"'> Edit</a></td>"); 
			 
			 out.println("<td><a href='deleteurl?idbookr="+rs.getInt(1)+"'>Delete</a></td>"); 
			 out.println("</tr>");
		 }
		 out.println("/table");
	   
		
		}catch(Exception e)
		{
			System.out.println(e);
		}
}



}
