<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Records</title>
</head>
<body>

<%

	ResultSet rs=(ResultSet)request.getAttribute("List");
    if(rs!=null){
%>

	<table align="center" border="1">
		<tr>
			
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone No</th>
			<th>Location</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
<%
	while(rs.next())
	{
		
		int id=rs.getInt("id");
%>
		<tr>
<%-- 		<td><%out.print("id"); %></td> --%>
			<td><%out.print(rs.getString("fname")); %></td>	
			<td><%out.print(rs.getString("lname")); %></td>
			<td><%out.print(rs.getString("email")); %></td>
			<td><%out.print(rs.getString("phone")); %></td>
			<td><%out.print(rs.getString("loc")); %></td>
			<td><a href="Update?id=<%=id %>">Edit</a></td>
			<td><a href="Delete?id=<%=id %>">Delete</a></td>
		</tr>
<%
	}
    }
%>
				
	</table>
</body>
</html>