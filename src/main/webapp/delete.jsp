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
        padding-left: 10%;
        padding-right: 10%;
        padding-top: 10%;
        text-align: center;
        font-size: 30px;
        
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
   
</head>
<body>
  <form action="profileform" method="post">
    <header>
        <div class="left">
           <h3> Welcome :  ${adminname}</h3>
            <%
            response.setHeader("Cache-Control","no-cache,no-store");
            
            String user1=(String)session.getAttribute("adminname");
              if(user1==null)
              {
            	  response.sendRedirect("Admin.jsp");
              }
            %>
        </div>

        <div class="right">
         <ul>
            
            <li><a href='admindatashow.jsp'>Showdata</a></li>
            <li style="font-family: Georgia, 'Times New Roman', Times, serif;"><a href="logout1" style="color: red;">Logout</a></li>
         </ul>
        </div>
    </header>

    <main>
     

      
      
      <div class="box">
        
<%@page import="java.sql.*" %>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_db","root","aman123");

  int id =Integer.parseInt(request.getParameter("idbookr"));
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