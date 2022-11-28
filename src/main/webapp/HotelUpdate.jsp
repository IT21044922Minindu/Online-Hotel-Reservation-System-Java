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
		String HID = request.getParameter("HID");
		String Name = request.getParameter("Name");
		String Address = request.getParameter("Address");
		String Phone = request.getParameter("Phone");
		String OwnerName = request.getParameter("OwnerName");
		String HType = request.getParameter("HType");
		String Price = request.getParameter("Price");
		
	%>

	<form action="Hotel-update" method = "POST">
	<table border = 1>
		<tr>
			<td>AID</td>
			<td><input type = "text" name = "cid" value = "<%= HID %>" readonly></td>
		</tr>
		<tr>
			<td>Hotel Name</td>
			<td><input type = "text" name = "hname" value = "<%= Name %>"></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><input type = "text" name = "address" value = "<%= Address %>"></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type = "text" name = "phone" value = "<%= Phone %>"></td>
		</tr>
		<tr>
			<td>Owner Name </td>
			<td><input type = "text" name = "ownername" value = "<%= OwnerName %>"> </td>
		</tr>
		<tr>
			<td>Hotel Type </td>
			<td><input type = "text" name = "htype" value = "<%= HType %>"> </td>
		</tr>
		<tr>
			<td>Price </td>
			<td><input type = "text" name = "price" value = "<%= Price %>"> </td>
		</tr>
	</table>
		<input type = "submit" name = "submit" value = "Update">
	</form>

</body>
</html>