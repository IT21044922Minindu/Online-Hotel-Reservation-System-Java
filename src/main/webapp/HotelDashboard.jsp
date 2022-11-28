<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>


<style>
a:link {
	color: black;
	font-weight: 600;
	text-decoration: none;
}
</style>



<title>Onling Hotel Reservation System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Administration Dashboard </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="AdminDashboard.jsp"
					class="nav-link">Customers</a></li>
				<li><a href="<%=request.getContextPath()%>/hlist"
					class="nav-link">Hotels</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Hotel Details</h3>
			<hr>
			<div class="container text-left">

				<a href="HotelInsert.jsp" class="btn btn-success">
					New Hotel</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>HID</th>
						<th>Name</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Owner Name</th>
						<th>Hotel Type</th>
						<th>Hotel Price</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="Cus" items="${CusDetials}">

						<tr>
							<td><c:out value="${Cus.HID}" /></td>
							<td><c:out value="${Cus.Name}" /></td>
							<td><c:out value="${Cus.Address}" /></td>
							<td><c:out value="${Cus.Phone}" /></td>
							<td><c:out value="${Cus.OwnerName}" /></td>
							<td><c:out value="${Cus.HType}" /></td>
							<td><c:out value="${Cus.Price}" /></td>
							<td><button type="button" class="btn btn-warning">
									Edit
								</button> &nbsp;&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-danger">
									Delete
								</button></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>