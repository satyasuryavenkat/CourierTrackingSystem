<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Tracking System</title>
<style>

body{
background-color:skyblue;
}
.card {
  /* Add shadows to create the "card" effect */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width:300px;
  float:left;
  margin-left:100px;
}

/* On mouse-over, add a deeper shadow */
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/* Add some padding inside the card container */
.container {
  padding: 2px 110px;
}

</style>
</head>
<body>
<center>
<h1>Login As</h1></center>
<br>
<br>

<div class="card">
<a href="login.jsp">
  <img src="user.png" alt="Avatar" style="width:100%;height:317px;">
  </a>
  <div class="container">
    <h2><b>User</b></h2>
    
  </div>
</div>

<div class="card">
<a href="./admin/login.jsp">
  <img src="admin.png" alt="Avatar" style="width:100%">
  </a>
  <div class="container">
    <h2><b>Admin</b></h2>
    
  </div>
</div>

<div class="card">
<a href="./staff/login.jsp">
  <img src="staff.jpg" alt="Avatar" style="width:100%; height:317px;">
  </a>
  <div class="container">
    <h2><b>Staff</b></h2>
    
  </div>
</div>

</body>
</html>