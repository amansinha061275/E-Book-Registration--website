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
@WebServlet("/editurl")
public class Edit extends HttpServlet
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
		PreparedStatement ps=con.prepareStatement("select bookname,bookedtion,bookprice from Bookregistration where idbookr=?");
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
		out.println("<form action='edit1?idbookr="+id+"' method='post'>");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>Book Name</td>");
		out.println("<td><input type='text' name='bookname' value='"+rs.getString(1)+"'></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>Book Edtion</td>");
		out.println("<td><input type='text' name='booke' value='"+rs.getString(2)+"'></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>Book Price</td>");
		out.println("<td><input type='text' name='price' value='"+rs.getString(3)+"'></td>");
		out.println("</tr>");
		
	
		

		out.println("<tr>");
		out.println("<td><button type='submit'>edit</button></td>");
		out.println("<td><button type='reset'>reset</button></td>");
		out.println("</tr>");
		
		out.println("</table>");
		out.println("</form>");
		 }
		 out.print("<a href='adminshow'>Show Data</a>");
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
}


}
