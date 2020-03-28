<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>

<style>
body {font-family: Arial, Helvetica, sans-serif;}


input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  
}

.imgcontainer {
  text-align: center;
  margin: 12px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding-left: 40px;
  width:25%;
  
  
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 0px) {
  span.psw {
     
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

</head>


<body>


<form action="<%= request.getContextPath() %>/userlogin" method="post">
  <h1 align="center">User Login</h1>

  <div class="container" style="padding-left:500px;">
    <label for="uname"><b>UserName</b></label>
    <input type="text" placeholder="Enter AdminName" name="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="passwd" required>
        
    <button type="submit">Login</button>
    
  </div>

  <div class="container" style="padding-left:500px;">
  <a href="register.jsp">
    <button type="button" class="cancelbtn">Register</button>
    </a>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>

</html>