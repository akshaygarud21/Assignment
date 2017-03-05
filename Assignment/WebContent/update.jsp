<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Data</title>
</head>
<body>
<form action="Edit">

<%
ResultSet rs=(ResultSet)request.getAttribute("Update");
%>

<table align="center" border="1">
		
<%
	if(rs.next())
	{
		
		int id=rs.getInt("id");
%>
		<input type="hidden" name="id" value="<%out.print(id); %>">
		

		<tr>
			<th>FirstName</th>
			<td><input type="text" name="fname" value="<%out.print(rs.getString("fname")); %>"> </td>
		</tr>
		
		<tr>
			<th>LastName</th>
			<td><input type="text" name="lname" value="<%out.print(rs.getString("lname")); %>"> </td>
		</tr>


		<tr>
			<th>Email</th>
			<td><input type="text" name="email" value="<%out.print(rs.getString("email")); %>"> </td>
		</tr>

		<tr>
			<th>Phone No</th>
			<td><input type="text" name="phone" value="<%out.print(rs.getString("phone")); %>"> </td>
		</tr>

		<tr>
			<th>Location</th>
			<td><input type="text" name="loc" value="<%out.print(rs.getString("loc")); %>"> </td>
		</tr>
		
		<tr>
				<th><input type="submit" value="Update"></th>

		</tr>
<%
	}
    
%>
				
	</table>
</form>
</body>
</html>