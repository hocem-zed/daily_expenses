<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense manager</title>
</head>
<body>
	<h1>Expense manager</h1>
    <p>${message}</p>

	<a href="${contextRoot}/expense">Add Expense</a>

	<c:forEach var="expense" items="${expenses}">
		<div>
			<h3>${expense.name}</h3>
			<p>${expense.amount} &euro;</p>
			<a href="${contextRoot}/expense/${expense.id}">Edit</a> |
			<a href="${contextRoot}/expense/delete/${expense.id}">Delete</a>
			<hr>
		</div>

	</c:forEach>
</body>
</html>
