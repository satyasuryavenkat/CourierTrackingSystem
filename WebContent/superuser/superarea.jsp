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
<h1>Admin Details </h1>

<table border="1">



<tr>
<th>Admin Id</th>
<th>Admin Name</th>
<th>Admin MailId</th>
<th>Admin Address</th>
<th>Admin Mobile</th>
<th>Admin Approval</th>
<th>Update</th>

</tr>



<%
String host="jdbc:mysql://localhost:3306/cts";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(host,"root","surya");
Statement sta = con.createStatement();
PreparedStatement st =null;

String sql = "select * from admins";

ResultSet rs = sta.executeQuery(sql);

while(rs.next())
{



%>

<tr>
<td><%=rs.getInt("adid") %></td>
<td><%=rs.getString("adname") %></td>
<td><%=rs.getString("admail") %></td>
<td><%=rs.getString("adaddr") %></td>
<td><%=rs.getString("admobile") %></td>
<td><%=rs.getString("approval") %></td>

<td>

<a href="updateadmin.jsp?adid=<%=rs.getInt("adid") %>">Edit</a>
</td>
</tr>



<%

}
%>
</table>
 </center>
</body>

</html>