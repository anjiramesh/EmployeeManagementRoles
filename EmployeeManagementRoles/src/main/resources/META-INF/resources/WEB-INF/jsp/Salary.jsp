<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salary</title>
</head>
<body>
<form:form action="list" method="get" modelAttribute="employee">
<h1>Employee Salary Data</h1>
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Salary</th>
			</tr>
			<c:forEach items="${list}" var="ob">
				<tr>
					<td><c:out value="${ob.name}"></c:out></td>
					<td><c:out value="${ob.email}"></c:out></td>
					<td><c:out value="${ob.salary}"></c:out></td>
					</tr>
			</c:forEach>
		</table>

</form:form>
</body>
</html>