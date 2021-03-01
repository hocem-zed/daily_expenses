<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Add Expense</h1>

    <form:form action="${contextRoot}/expense" method="post" modelAttribute="expense">
        <form:hidden path="id" />
        <form:input path="name" placeholder="Enter expense name"/>
        <form:textarea path="note" placeholder="Enter note (optional)"/>
        <form:input type="number" path="amount" placeholder="Enter amount"/>
        <button type="submit">Save</button>
    </form:form>
</body>
</html>
