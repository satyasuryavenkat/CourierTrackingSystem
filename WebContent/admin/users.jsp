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


</head>


<body>

<center>
<h1>User Details </h1>

<table border="1">



<tr>
<th>User Id</th>
<th>User Name</th>
<th>User MailId</th>
<th>User Address</th>
<th>User Mobile</th>
<th>User Approval</th>
<th>Update</th>

</tr>



<%
String host="jdbc:mysql://localhost:3306/cts";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(host,"root","surya");
Statement sta = con.createStatement();
PreparedStatement st =null;

String sql = "select * from users";

ResultSet rs = sta.executeQuery(sql);

while(rs.next())
{



%>

<tr>
<td><%=rs.getInt("uid") %></td>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("usermail") %></td>
<td><%=rs.getString("useraddr") %></td>
<td><%=rs.getString("usermobile") %></td>
<td><%=rs.getString("approval") %></td>

<td>

<a href="updateuser.jsp?uid=<%=rs.getInt("uid") %>">Edit</a>
</td>
</tr>



<%

}
%>
</table>
 </center>
</body>

</html>