package in.sp.book;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logout1")
public class logout1 extends HttpServlet
{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  PrintWriter out = resp.getWriter();
	   HttpSession session = req.getSession();
	   
	   session.invalidate();
	   RequestDispatcher rd= req.getRequestDispatcher("/Admin.jsp");
	   rd.include(req, resp);
	   out.close();
}
}
