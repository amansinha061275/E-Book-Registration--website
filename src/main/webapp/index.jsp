<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>

  <style>
    .box
    {
      height: 400px;
      width: 600px;
      margin-top: 5%;
      margin-left: 25%;
      padding-top: 2%;
       text-align: center;
    
      background-color: rgba(248, 215, 139, 0.5);
    }
      
    h3{
          font-size: 30px;
    }
    
    input
    {
      height:25px;
    }
  
     input[type=submit]
    {
        width: 51%;
        height: 35px;
        background-color:rgb(8, 244, 8) ;
        color: azure;

    }
    input[type=text],input[type=password]
    {
        width: 51%;
        height: 35px; 
    }
  
   
    body
    {
      background-image: url('image/book.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
    }
    .header{
     width: 100%;
            height: 60px;
            border: 1px solid black;
            background-color: black;
            color: azure;
             text-align: right;
    }
    
       .header ul{
            list-style-type:none;
            text-align: right;
            padding-right: 6%;
            word-spacing: 30px;
            padding-top: 1%;
            
        }
        .header ul li
        {
            display: inline;
               
        }
        .header ul li a
        {
            display: inline;
            text-decoration: none;
            color: azure;
            
        }
        .header ul li a:hover
        {
            color: rgb(8, 244, 8);
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
  <body >
  
 
  <form action="loginForm"  method="post">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    
    <div class="header">
    <ul>
    <li><a href="Admin.jsp">Admin</a></li>
    </ul>
    </div>
    
     
    <div class="box">
    
        <h3 >Login</h3>
         <hr>
        <tr>
            <th>User Name</th>
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
           Not a member?<a href="registration.jsp">Create Account</a>
            <hr>
    </div>

    </form>
</body>
</html>