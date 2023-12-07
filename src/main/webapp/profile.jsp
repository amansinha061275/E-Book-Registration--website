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
        width: 100%;
        background-color:rgb(8, 244, 8);
    }
        
    .box
    {
        width: 35%;
        height: 350px;
        border: 1px solid black;
        margin-left: 23%;
        padding-left: 18%;
        padding-top: 6%;
      
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
       width: 100%;
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
            <li><a href="booklist.jsp">BookList</a></li>
            
            <li style="font-family: Georgia, 'Times New Roman', Times, serif;"><a href="logout" style="color: red;">Logout</a></li>
         </ul>
        </div>
    </header>

    <main>
      <div class="marqee">
        <marquee behavior="alternate" onmouseover="stop();" onmouseout="start(); ">
            
            <h1> Book Registration</h1>
        
        </marquee>

      </div>
      
      <div class="box">
        <p>Book Name </p>
        <input type="text" name="bookname" placeholder="Enter book name"  required>
        <br>
        <br>
        <p>Book Edtion</p>
        <input type="text" name="booke" placeholder="enter book Edtion"  required>
        <br>
        <br>
        <p>Book Price</p>
        <input type="number" name="price" placeholder="enter price"  required>
        <br>
        <br>
        <br>
        <div class="button">
        <input type="submit" value="Register">
        </div>
      </div>

    </main>

    <footer>
    <div class="footer">
     <p>@copyright</p>
    </div>
    </footer>
    </form>
</body>
</html>