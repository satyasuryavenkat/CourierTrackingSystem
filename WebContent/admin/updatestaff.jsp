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
<title>Courier Tracking System</title>

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
String id=request.getParameter("sid");
int sid= Integer.parseInt(id);

String sql = "select * from staff where sid='"+sid+"'";

ResultSet rs = sta.executeQuery(sql);

while(rs.next())
{



%>
  <h1 align="center">Update User details</h1>

  <div class="container" style="padding-left:500px;">
  
    <label for="uname"><b>Username</b></label>
    <input type="text" value="<%= rs.getString("sname")%>" name="staffname" required>

	<label for="mail"><b>Email</b></label>
    <input type="text" value="<%= rs.getString("smail")%>" name="mail" required>
    
    <label for="addr"><b>Address</b></label>
    <input type="text" value="<%= rs.getString("saddr")%>" name="addr" required>

	<label for="mobile"><b>Mobile Number</b></label>
    <input type="text" value="<%= rs.getString("smobile")%>" name="mobile" required>
    
    <label for="mobile"><b>Approval</b></label>
    
    <select name="approval" class="approval">
    <option  value="yes">Yes</option>
    <option  value="no">No</option>
    </select>
   
        <%
        
}
        %>
    <button type="submit">Update</button>
    
  </div>

  
</form>

</body>

</html>

<% 

String staffname=request.getParameter("staffname");
    		String mailid=request.getParameter("mail");
    		String address=request.getParameter("addr");
    		String mobile=request.getParameter("mobile");
    		String approval=request.getParameter("approval");
    		
    		if(staffname!=null&& mailid!=null && address!=null&& mobile!=null && approval!=null)
    		{
    			String query= "update staff set sname=?, smail=?,saddr=?,smobile=?,approval=? where sid='"+sid+"'";
    			st=con.prepareStatement(query);
    			st.setString(1,staffname);
    			st.setString(2,mailid);
    			st.setString(3,address);
    			st.setString(4,mobile);
    			st.setString(5,approval);
    			st.executeUpdate();
    			response.sendRedirect("staff.jsp");
    		}


%>