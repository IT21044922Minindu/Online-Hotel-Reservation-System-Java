<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin User Account</title>
</head>
<body>
	<c:forEach var="adm" items="${admDetails}">
	
		<c:set var="cid" value="${adm.cid}"/>
		<c:set var="name" value="${adm.name}"/>
		<c:set var="email" value="${adm.email}"/>
		<c:set var="phone" value="${adm.phone}"/>
		<c:set var="username" value="${adm.username}"/>
		<c:set var="password" value="${adm.password}"/>
		
		
	<table border = 1>
	<tr>
		<td>Admin ID</td>
		<td>${adm.cid}</td>
	</tr>
	<tr>
		<td>Admin Name</td>
		<td>${adm.name}</td>
	</tr>
	<tr>
		<td>Admin Email</td>
		<td>${adm.email}</td>
	</tr>
	<tr>
		<td>Admin Phone</td>
		<td>${adm.phone}</td>
	</tr>
	<tr>
		<td>Admin User Name</td>
		<td>${adm.username}</td>
	</tr>
	</table>
	</c:forEach>
	
	<c:url value = "AdminUpdate.jsp" var ="admUpdate">
		<c:param name = "cid" value = "${cid}"/>
		<c:param name = "name" value = "${name}"/> 
		<c:param name = "email" value = "${email}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "username" value = "${username}"/>
		<c:param name = "password" value = "${password}"/>
		<table border = 1>
	<tr>
		<td>Admin ID</td>
		<td>${adm.cid}</td>
	</tr>
	<tr>
		<td>Admin Name</td>
		<td>${adm.name}</td>
	</tr>
	<tr>
		<td>Admin Email</td>
		<td>${adm.email}</td>
	</tr>
	<tr>
		<td>Admin Phone</td>
		<td>${adm.phone}</td>
	</tr>
	<tr>
		<td>Admin User Name</td>
		<td>${adm.username}</td>
	</tr>
	</table>
	</c:url>
	<a href ="${admUpdate}" >
	<input type = "button" name ="update" value = "Update Account">
	</a>
	<a href ="AdminDashboard.jsp"><button>Dashboard</button></a>
	<br>
	<c:url value = "AdminDelete.jsp" var ="admDelete">
		<c:param name = "cid" value = "${cid}"/>
		<c:param name = "name" value = "${name}"/> 
		<c:param name = "email" value = "${email}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "username" value = "${username}"/>
		<c:param name = "password" value = "${password}"/>
	</c:url>
	<a href ="${admDelete}" >
	<input type = "button" name ="delete" value = "Delete Account">
	</a>
	
	
</body>
</html>