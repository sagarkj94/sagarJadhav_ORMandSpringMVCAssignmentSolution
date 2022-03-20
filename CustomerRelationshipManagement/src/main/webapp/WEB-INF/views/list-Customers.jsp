<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Relationship Management</title>
</head>

<body>

	<div class="container">
		<div style="padding-top: 10px;"></div>
		<h3 style="background-color: lightgreen;padding-top: 10px;padding-bottom: 10px;font-weight: bold;
    text-align: center;">Customer Relationship Management</h3>
		<hr>

		<!-- Add a search form -->

		
			<a href="/CustomerRelationshipManagement/customers/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Customer </a> 
			
		
		<table class="table table-bordered table-striped">
			<thead style="background-color: green;">
				<tr>
					<th style="color: white;">First Name</th>
					<th style="color: white;">Last Name</th>
					<th style="color: white;">Email</th>
					<th style="color: white;">Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Customer}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/CustomerRelationshipManagement/customers/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a href="/CustomerRelationshipManagement/customers/delete?customerId=${tempCustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Customer?'))) return false">
								Delete </a>

						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>



