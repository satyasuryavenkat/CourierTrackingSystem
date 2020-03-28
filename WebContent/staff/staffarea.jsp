<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 20%;
  height:60%;
  float:left;
  
  margin:30px;
  
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
  padding-left:50px;
}

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 6px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<header>

<h1 align="center">Staff Area


<button class="button" type="submit">Logout</button>


</h1>


</header>
<body>






<div class="card">
  <a href="staff.jsp"><img src="managers.jpg" alt="Avatar" style="width:100%; height:270px;"></a>
  <div class="container">
    <h4><b>Your Details</b></h4>  
  </div>
</div>

<div class="card">
  <a href="warehouse.jsp"><img src="warehouse.png" alt="Avatar" style="width:100%; height:270px;"></a>
  <div class="container">
    <h4><b>Warehouse Details</b></h4>  
  </div>
</div>

</body>
</html>