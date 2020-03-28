<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 20%;
  height:55%;
  float:left;
  
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
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>

<h1 align="center">Admin Area</h1>

<div class="card">
  <a href="#"><img src="users.png" alt="Avatar" style="width:100%;"></a>
  <div class="container">
    <h4><b>Update User Details</b></h4>  
  </div>
</div>

<div class="card">
  <a href="#"><img src="tracking.jpg" alt="Avatar" style="width:100%; height:270px;"></a>
  <div class="container">
    <h4><b>Track User Couriers</b></h4>  
  </div>
</div>

<div class="card">
  <a href="#"><img src="managers.jpg" alt="Avatar" style="width:100%; height:270px;"></a>
  <div class="container">
    <h4><b>Branch manager Details</b></h4>  
  </div>
</div>

<div class="card">
  <a href="#"><img src="bills.jpg" alt="Avatar" style="width:100%; height:270px;"></a>
  <div class="container">
    <h4><b>Check Courier Payments</b></h4>  
  </div>
</div>

<div class="card">
  <a href="#"><img src="couriers.jpg" alt="Avatar" style="width:100%; height:270px;"></a>
  <div class="container">
    <h4><b>Check Courier Details</b></h4>  
  </div>
</div>


<center>
<button class="button" style="margin-top:100px;" type="submit">Logout</button>
</center>
</body>
</html>