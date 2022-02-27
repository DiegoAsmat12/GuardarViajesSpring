<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %> <!--Unicamente para update-->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!--BOOTSTRAP-->
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
	</head>
	<body>
		<div class="container">
		<header>
			<div class="d-flex justify-content-between">
				<h1 class="text-primary">Expense Details</h1>
				<a href="/expenses" class="btn btn-link">Go back</a>
			</div>
		</header>
		<main>
			<div class="row">
				<p>Expense Name: <c:out value="${expense.getName()}"></c:out></p>
				<p>Expense Description: <c:out value="${expense.getDescription()}"></c:out></p>
				<p>Expense Vendor: <c:out value="${expense.getVendor()}"></c:out></p>
				<p>Amount Spend: <c:out value="${expense.getAmount()}"></c:out></p>
			</div>
		</main>
		</div>
		
		
		<!--BOOTSTRAP-->
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>