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
<h1>Staff Details </h1>

<table border="1">



<tr>
<th>Staff Id</th>
<th>Staff Name</th>
<th>Staff MailId</th>
<th>Staff Address</th>
<th>Staff Mobile</th>
<th>Staff Approval</th>
<th>Update</th>

</tr>



<%
String host="jdbc:mysql://localhost:3306/cts";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(host,"root","surya");
Statement sta = con.createStatement();
PreparedStatement st =null;

String sql = "select * from staff";

ResultSet rs = sta.executeQuery(sql);

while(rs.next())
{



%>

<tr>
<td><%=rs.getInt("sid") %></td>
<td><%=rs.getString("sname") %></td>
<td><%=rs.getString("smail") %></td>
<td><%=rs.getString("saddr") %></td>
<td><%=rs.getString("smobile") %></td>
<td><%=rs.getString("approval") %></td>

<td>

<a href="updatestaff.jsp?sid=<%=rs.getInt("sid") %>">Edit</a>
</td>
</tr>



<%

}
%>
</table>
 </center>
</body>

</html>