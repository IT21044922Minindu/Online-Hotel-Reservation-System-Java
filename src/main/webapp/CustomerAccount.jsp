<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>
</head>
<body>
	<c:forEach var="cus" items="${cusDetails}">
	
		<c:set var="cid" value="${cus.cid}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="phone" value="${cus.phone}"/>
		<c:set var="username" value="${cus.username}"/>
		<c:set var="password" value="${cus.password}"/>	
		
		
	<table border = 1>
	<tr>
		<td>Customer ID</td>
		<td>${cus.cid}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.username}</td>
	</tr>
	</table>
	

	</c:forEach>
	<c:url value = "CustomerUpdate.jsp" var ="cusUpdate">
		<c:param name = "cid" value = "${cid}"/>
		<c:param name = "name" value = "${name}"/> 
		<c:param name = "email" value = "${email}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "username" value = "${username}"/>
		<c:param name = "password" value = "${password}"/>
		<table border = 1>
	<tr>
		<td>Customer ID</td>
		<td>${cid}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${name}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${username}</td>
	</tr>
	</table>
	</c:url>
	<a href ="${cusUpdate}" >
	<input type = "button" name ="update" value = "Update My Account">
	</a>
	
	<br>
	
	<c:url value = "CustomerDelete.jsp" var ="cusDelete">
		<c:param name = "cid" value = "${cid}"/>
		<c:param name = "name" value = "${name}"/> 
		<c:param name = "email" value = "${email}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "username" value = "${username}"/>
		<c:param name = "password" value = "${password}"/>
	</c:url>
	<a href ="${cusDelete}" >
	<input type = "button" name ="delete" value = "Delete Account">
	</a>
</body>
</html>









