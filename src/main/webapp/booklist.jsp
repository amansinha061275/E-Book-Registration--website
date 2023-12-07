<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
       
        *{
       margin:0px;
       padding:0px;
       }
       
        header
        {
            width: 100%;
            height: 60px;
            border: 1px solid black;
            background-color: black;
            color: azure;
        }
        
        .left
        {
            width: 50%;
            height: 60px;
            
            float: left;
            padding-top: 1.5%;
            padding-left: 4px;

        }
        h3
        {
            padding-left: 5%;
        }
        .right
        {
            width: 49.5%;
            height: 60px;

            float: right;
             padding-top: 1.5%;
           
           
        }
        .right ul{
            list-style-type:none;
            text-align: right;
            padding-right: 6%;
            word-spacing: 30px;
            
        }
        .right ul li
        {
            display: inline;
               
        }
        .right ul li a
        {
            display: inline;
            text-decoration: none;
            color: azure;
            
        }
        .right ul li a:hover
        {
            color: rgb(8, 244, 8);
        }

    .marqee
    {
        background-color:rgb(8, 244, 8);
    }
        
    .box
    {
        width: 35%;
        height: 350px;
        border: 1px solid black;
        margin-left: 22%;
        padding-left: 15%;
        padding-right: 5%;
        padding-top: 8%;
         background-color: rgba(248, 215, 139, 0.5);
    }
    input[type=submit]
    {
        width: 53%;
        height: 35px;
        background-color:rgb(8, 244, 8) ;
        color: azure;

    }
    input[type=text],input[type=number]
    {
        width: 50%;
        height: 30px; 
    }
  
    footer
    {
        width: 100%;
        height: 50px;
        border: 1px solid black;
        background-color: black;
        color: azure;
        text-align: center;
        font-size: smaller;
    }
    
     body
    {
      background-image: url('image/book.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
    }
    </style>
    <script type="text/javascript"> 
        window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
    </script> 
</head>
<body>
  <form action="profileform" method="post">
    <header>
        <div class="left">
        <h3> Welcome :  ${name}</h3>
            <%
            response.setHeader("Cache-Control","no-cache,no-store");
            
            String user=(String)session.getAttribute("name");
              if(user==null)
              {
            	  response.sendRedirect("index.jsp");
              }
            %>
        </div>

        <div class="right">
         <ul>
            
            <li><a href="profile.jsp">Home</a></li>
            <li style="font-family: Georgia, 'Times New Roman', Times, serif;"><a href="logout" style="color: red;">Logout</a></li>
         </ul>
        </div>
    </header>

    <main>
     

      
      
      <div class="box">
        
<%@page import="java.sql.*" %>
<%
  //ResultSet rs=null;
 // Connection con=null;
 // PreparedStatement ps=null;

  try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");
	
	PreparedStatement ps=con.prepareStatement("select idbookr,bookname,bookedtion,bookprice from Bookregistration");
	
	
	ResultSet rs=ps.executeQuery();
	
	

	
	 out.println("<table border='1' align='center'>");
	 out.println("<tr>");
	 out.println("<th>ID</th>");
	 out.println("<th>Book Name</th>");
	 out.println("<th>Book Edtion</th>");
	 out.println("<th>Book Price</th>");
	 
	 
	 out.println("</tr>");
  	 
	 while(rs.next())
	 {
		 out.println("<tr>");
		 out.println("<td>"+rs.getInt(1)+"</td>");  
		 out.println("<td>"+rs.getString(2)+"</td>");         
		 out.println("<td>"+rs.getString(3)+"</td>");         
		 out.println("<td>"+rs.getString(4)+"</td>"); 
		  
		 out.println("</tr>");
	 }
	 //out.println("/table");
 
	
	}catch(Exception e)
	{
		out.println(e);
	}



%>
      </div>

    </main>

    
   
    </form>
</body>
</html>