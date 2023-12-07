package in.sp.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/regForm")
public class EBook extends HttpServlet
{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 
	  PrintWriter out= resp.getWriter();
	  resp.setContentType("text/html");
	  String myname=req.getParameter("name");
	  String myuser=req.getParameter("user");
	  String mypass=req.getParameter("pass");
	  String mymobile= req.getParameter("Mobile");
	  
	  try
	  {
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  
		  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
		  
		  PreparedStatement ps= con.prepareStatement("insert into book1(name,user,pass,Mobile) values(?,?,?,?)");
		  
		  ps.setString(1, myname);
		  ps.setString(2, myuser);
		  ps.setString(3,mypass);
		  ps.setString(4, mymobile);
		  
		  int count=ps.executeUpdate();
		  
		  if(count==1)
		  {
			  
			  out.print("<h6 style='color:green'>User registered successfully</h6>");
			 RequestDispatcher rd= req.getRequestDispatcher("/index.jsp");
			  rd.include(req, resp);
		  }
		  else
		  {
			 
			  out.print("<h6 style='color:red'>User registered  not successfully</h6>");
			  RequestDispatcher rd= req.getRequestDispatcher("/registration.jsp");
			  rd.include(req, resp);
		  }
	  }catch(Exception e)
	  {
		  e.printStackTrace();
		  out.print("<h6 style='color:red'> Excepyion Occured : "+e.getMessage()+" </h6>");
			 
		  RequestDispatcher rd= req.getRequestDispatcher("/registration.jsp");
	      rd.include(req, resp);
	  }
}
}
