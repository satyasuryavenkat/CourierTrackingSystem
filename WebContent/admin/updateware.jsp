<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.DriverManager"  %>   
<%@ page import="java.sql.PreparedStatement"  %> 
<%@ page import="java.sql.Connection"  %> 
<%@ page import="java.sql.ResultSet"  %> 
<%@ page import="java.sql.Statement"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>

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
  background-color: #555;
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
.approval{

padding: 10px 147px;



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
<%
String host="jdbc:mysql://localhost:3306/cts";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(host,"root","surya");


%>

<form action="" method="post">

<%
Statement sta = con.createStatement();
PreparedStatement st =null;
String uid=request.getParameter("bid");
int bid= Integer.parseInt(uid);

String sql = "select * from warehouse where bid='"+bid+"'";

ResultSet rs = sta.executeQuery(sql);

while(rs.next())
{



%>
  <h1 align="center">Update Branch details</h1>

  <div class="container" style="padding-left:500px;">
  
    <label for="uname"><b>Username</b></label>
    <input type="text" value="<%= rs.getString("bname")%>" name="branchname" required>

    <label for="addr"><b>Location</b></label>
    <input type="text" value="<%= rs.getString("baddr")%>" name="addr" required>

	<label for="mobile"><b>Mobile Number</b></label>
    <input type="text" value="<%= rs.getString("bmobile")%>" name="mobile" required>
   
        <%
        
}
        %>
    <button type="submit">Update</button>
    
  </div>

  
</form>

</body>

</html>

<% 

String branchname=request.getParameter("branchname");
    
    		String address=request.getParameter("addr");
    		String mobile=request.getParameter("mobile");
    	
    		
    		if(branchname!=null&& address!=null&& mobile!=null)
    		{
    			String query= "update warehouse set bname=?,baddr=?,bmobile=? where bid='"+bid+"'";
    			st=con.prepareStatement(query);
    			st.setString(1,branchname);
    			st.setString(2,address);
    			st.setString(3,mobile);
    			
    			st.executeUpdate();
    			response.sendRedirect("viewware.jsp");
    		}


%>