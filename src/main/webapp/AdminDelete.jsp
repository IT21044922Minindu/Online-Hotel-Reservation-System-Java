<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Admin</title>
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
	<form action="Admin-delete" method = "POST">
	<table border = 1>
		<tr>
			<td>CID</td>
			<td><input type = "text" name = "cid" value = "<%= cid %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type = "text" name = "name" value = "<%= name %>"readonly></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type = "text" name = "email" value = "<%= email %>"readonly></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type = "text" name = "phone" value = "<%= phone %>"readonly></td>
		</tr>
		<tr>
			<td>User Name </td>
			<td><input type = "text" name = "username" value = "<%= username %>"readonly> </td>
		</tr>
	</table>
		<input type = "submit" name = "submit" value = "Delete My Account">
	</form>

</body>
</html>