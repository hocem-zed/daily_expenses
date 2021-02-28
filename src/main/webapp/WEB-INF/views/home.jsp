<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Expense manager</h1>
    <p>${message}</p>
	<c:forEach var="expense" items="${expenses}">
		<h3>${expense.name}</h3>
		<p>${expense.amount}</p>
	</c:forEach>
</body>
</html>
