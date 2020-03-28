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
<th>Branch Id</th>
<th>Branch Name</th>
<th>User Address</th>
<th>User Mobile</th>
<th>Update</th>


</tr>



<%
String host="jdbc:mysql://localhost:3306/cts";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(host,"root","surya");
Statement sta = con.createStatement();
PreparedStatement st =null;

String sql = "select * from warehouse";

ResultSet rs = sta.executeQuery(sql);

while(rs.next())
{



%>

<tr>
<td><%=rs.getInt("bid") %></td>
<td><%=rs.getString("bname") %></td>
<td><%=rs.getString("baddr") %></td>
<td><%=rs.getString("bmobile") %></td>

<td>

<a href="updateware.jsp?bid=<%=rs.getInt("bid") %>">Edit</a>
</td>

</tr>



<%

}
%>
</table>
 </center>
</body>

</html>