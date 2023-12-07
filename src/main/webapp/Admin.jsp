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
            font-size:30px;
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

    
        
    .box
    {
        width: 45%;
        height: 400px;
        border: 1px solid black;
        margin-left: 30%;
       text-align: center;
        padding-top: 6%;
       
         background-color: rgba(248, 215, 139, 0.5);
    }
    input[type=submit]
    {
        width: 52%;
        height: 35px;
        background-color:rgb(8, 244, 8) ;
        color: azure;

    }
    input[type=text],input[type=password]
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
  
  
 
  
  function ch()
  {
  //alert("aman");
  var name=document.getElementById("un").value;
if(name=="")
{
document.getElementById("sp").innerHTML="Invalid name";
document.getElementById("un").style.border="2px solid red";
}
else
{
document.getElementById("sp").innerHTML="";
document.getElementById("un").style.border="";
}

  }
  
  function ch1()
  {
	  var pass=document.getElementById("pp").value;
	  if(pass.length<=3)
	  {
	  document.getElementById("sp1").innerHTML="Weak Password";

	  document.getElementById("sp1").style.color="red";
	  }
	  else if(pass.length>3 && pass.length<=6)
	  {
	  document.getElementById("sp1").innerHTML="Medium Password";
	  document.getElementById("sp1").style.color="yellow";
	  }
	  else
	  {
	  document.getElementById("sp1").innerHTML="Strong Password";
	  document.getElementById("sp1").style.color="green";
	  }
  }
 
  </script>
  
 
    
   
</head>
<body>
  <form action="Adminform" method="post">
    <header>
        <div class="left">
           
        </div>

        <div class="right">
         <ul>
           
            <li><a href="Admin.jsp">Admin</a></li>
             <li><a href="index.jsp">Login</a></li>
           
         </ul>
        </div>
    </header>

    <main>
      
    <div class="box">
    
        <h3 >Admin Login</h3>
        <br>
        <br>
         <hr>
         <br>
        <tr>
        
            <th>Admin User Name</th>
            <br>
            <th> <input type="text" name="user" id="un" placeholder="enter the user name"><br></th>
               <span style="color:red;" id="sp"></span>
        </tr>
        <br><br>
         <tr>
            <th>Password</th>
            <br>
            <th><input type="password" name="pass" id="pp" placeholder="******" onkeypress="ch1()"> <br></th>
            <span style="color:red;" id="sp1"></span>
         </tr>
         <br>
         <br>
        
            <input type="submit" value="Login"  onclick="ch()">
            <br>
            <br>
            <hr>
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