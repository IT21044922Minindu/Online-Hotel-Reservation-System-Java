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
		<c:set var="id" value="${cus.cid}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="phone" value="${cus.phone}"/>
		<c:set var="username" value="${cus.username}"/>
		<c:set var="password" value="${cus.password}"/>
		
		${cus.cid}<br>
		${cus.name}<br>
		${cus.email}<br>
		${cus.phone}<br>
		${cus.username}<br>
		${cus.password}<br>
		
	</c:forEach>
</body>
</html>