<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Account</title>
</head>
<body>
	
	<%
		String cid = request.getParameter("cid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
	%>

	<form action="Admin-update" method = "POST">
	<table border = 1>
		<tr>
			<td>AID</td>
			<td><input type = "text" name = "cid" value = "<%= cid %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type = "text" name = "name" value = "<%= name %>"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type = "text" name = "email" value = "<%= email %>"></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type = "text" name = "phone" value = "<%= phone %>"></td>
		</tr>
		<tr>
			<td>User Name </td>
			<td><input type = "text" name = "username" value = "<%= username %>"> </td>
		</tr>
		<tr>
			<td>Password</td> 
			<td><input type = "text" name = "password" value = "<%= password %>"></td>
		</tr>
	</table>
		<input type = "submit" name = "submit" value = "Update">
	</form>

</body>
</html>