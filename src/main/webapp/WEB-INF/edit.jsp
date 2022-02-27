<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!--BOOTSTRAP-->
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container">
			<header>
				<div class="d-flex justify-content-between">
					<h1 class="text-sucess">Edit Expense</h1>
					<a href="/expenses" class="btn btn-link">Go back</a>
				</div>
			</header>
			<main>
				<div class="row">
					<form:form action="/expenses/${expense.getId()}" method="post" modelAttribute="expense">
						<input type="hidden" name="_method" value="put">
						<form:errors path="name" class="alert alert-danger d-block"></form:errors>
						<form:errors path="vendor" class="alert alert-danger d-block"></form:errors>
						<form:errors path="amount" class="alert alert-danger d-block"></form:errors>
						<form:errors path="description" class="alert alert-danger d-block"></form:errors>

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
			
			
		</div>
		
		<!--BOOTSTRAP-->
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>