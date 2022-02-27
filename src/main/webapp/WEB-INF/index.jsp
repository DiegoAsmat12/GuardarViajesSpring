<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Read Share</title>
		<!--BOOTSTRAP-->
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	</head>
	<body>
		<main class="container">
			<div class="row">
				<h1 class="text-primary">Save Travels</h1>
				<div class="table-container">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Expense Name</th>
								<th scope="col">Vendor</th>
								<th scope="col">Amount</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="expense" items="${currentExpenses}">
								<tr>
									<td><c:out value="${expense.name}"></c:out></td>
									<td><c:out value="${expense.vendor}"></c:out></td>
									<td><c:out value="${expense.amount}"></c:out></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<h1 class="text-primary">Add an expense</h1>
				<form:form action="/expenses" method="post" modelAttribute="expense">
					<div class="alert alert-danger d-flex flex-column" role="alert">
						<form:errors path="name"></form:errors>
						<form:errors path="vendor"></form:errors>
						<form:errors path="amount"></form:errors>
						<form:errors path="description"></form:errors>
					</div>
					<div class="form-group mb-3">
						<form:label path="name">Expense Name:</form:label>
						<form:input path="name" class="form-control"/>
					</div>
					<div class="form-group mb-3">
						<form:label path="vendor">Vendor:</form:label>
						<form:input path="vendor" class="form-control"/>
					</div>
					<div class="form-group mb-3">
						<form:label path="amount">Amount:</form:label>
						<form:input path="amount" class="form-control"/>
					</div>
					<div class="form-group mb-3">
						<form:label path="description">Description:</form:label>
						<form:textarea path="description" class="form-control" rows="5"/>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
					
				</form:form>
			</div>
		</main>
		
		<!--BOOTSTRAP-->
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>