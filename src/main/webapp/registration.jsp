<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>

  <style>
    .box
    {
      height: 500px;
      width: 600px;
      margin-top: 4%;
      margin-left: 25%;
      text-align: center;
      padding-top: 2%;
     background-color: rgba(248, 215, 139, 0.5);
    }
      
    h3{
        font-style: inherit;
    }
    
    input
    {
      height:25px;
    }
   
    button
   {
   height:30px;
   width:100px;
   border-radius: 5%;
   
   }
   
   
    input[type=submit]
    {
        width: 51%;
        height: 35px;
        background-color:rgb(8, 244, 8) ;
        color: azure;

    }
    input[type=text],input[type=password],input[type=number]
    {
        width: 50%;
        height: 33px; 
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
  
  function ch()
  {
  //alert("hiii");
  var mob=document.getElementById("tb").value;
  if(mob.length!=9)
  {
  document.getElementById("sp").innerHTML="Invalid No";
  document.getElementById("tb").style.border="2px solid red";
  }
  else
  {
  document.getElementById("sp").innerHTML="Valid No";
  document.getElementById("sp").style.color="green";
  }

  }
  
  function ch2()
  {
  //alert("hiii");
  var name=document.getElementById("tb1").value;
  if(name=="")
  {
 // document.getElementById("sp2").innerHTML="Invalid name";
  document.getElementById("tb1").style.border="2px solid red";
  }
  else
  {
  document.getElementById("sp2").innerHTML="";
  document.getElementById("tb1").style.border="";
  }
  }
  </script>
  
  <body>
    <form action="regForm"  method="post">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    

    
    <div class="box">
        <h3>Registration</h3>
        <hr>
        <tr>
            <th>Name</th>
            <br>
            <th> <input type="text" name="name" id="tb1" placeholder="enter the name" required="true"></th>
            <span style="color:red;" id="sp2"></span>
        </tr>
        <br>
         <tr>
            <th>User Name</th>
            <br>
            <th><input type="text" name="user" id="tb1" placeholder="enter the user name" required="true"></th>
            <span style="color:red;" id="sp2"></span>
         </tr>
          <br>
          
         <tr>
            <th>Password</th>
            <br>
            <th><input type="password" name="pass" id="pp" placeholder="*******" onkeypress="ch1()" required="true"><br></th>
              <span style="color:red;" id="sp1"></span>
         </tr>
         <br>
         <tr>
            <th>Mobile</th>
            <br>
            <th><input type="number" id="tb" name="Mobile" onkeypress="ch()" required="true"><br></th>
              <span style="color:red;" id="sp"></span>
         </tr>
         <br>
         <br>
            <input type="submit" value="register" onclick="ch2()">
            <br>
              A member? <a href="index.jsp">Login now</a>
            
               <hr>
            
    </div>

    </form>
</body>
</html>