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
import javax.servlet.http.HttpSession;
@WebServlet("/profileform")
public class profile extends HttpServlet
{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   PrintWriter out= resp.getWriter();
		  resp.setContentType("text/html");
		  
		  //HttpSession session =req.getSession(false);
		  HttpSession session =req.getSession();
		 // String name= (String) session.getAttribute("name");
		/*  if(session_name!=null)
		  {
			 // String name= (String) session.getAttribute("name");
			  
			  out.print("welcome"+session_name);
			  
		  }else
		  {
			  out.println("please login first");
			  RequestDispatcher rd= req.getRequestDispatcher("/index.jsp");
			  rd.include(req, resp);
			  
		  }*/
		  String mybook=req.getParameter("bookname");
		  String mybooke=req.getParameter("booke");
		  String myprice=req.getParameter("price");
	
		  
		  try
		  {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  
			  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
			  
			  PreparedStatement ps= con.prepareStatement("insert into bookregistration(bookname,bookedtion,bookprice) values(?,?,?)");
			  
			  ps.setString(1, mybook);
			  ps.setString(2, mybooke);
			  ps.setString(3,myprice);
			  
			  
			  int count=ps.executeUpdate();
			  
			  if(count==1)
			  { 
				 
				  out.print("<h6 style='color:green'>User registered successfully</h6>");
				 RequestDispatcher rd= req.getRequestDispatcher("/profile.jsp");
				  rd.include(req, resp);
			  }
			  else
			  {
				 
				  out.print("<h6 style='color:red'>User registered  not successfully</h6>");
				  RequestDispatcher rd= req.getRequestDispatcher("/profile.jsp");
				  rd.include(req, resp);
			  }
		  }catch(Exception e)
		  {
			  e.printStackTrace();
			  out.print("<h6 style='color:red'> Excepyion Occured : "+e.getMessage()+" </h6>");
				 
			  RequestDispatcher rd= req.getRequestDispatcher("/profile.jsp");
		      rd.include(req, resp);
		  }
	}

}
