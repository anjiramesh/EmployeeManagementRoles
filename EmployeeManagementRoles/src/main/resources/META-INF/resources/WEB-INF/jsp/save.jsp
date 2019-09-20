<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-white">
				<h2>Employee Register and Display!!</h2>
			</div>
			<div class="card-body">
				<form:form cssClass="form " action="save" method="post" modelAttribute="employee">
					<%-- <div class="row">
						<div class="col-3">
							<label for="NAME" class="control-label">NAME</label>

						<!-- </div>
						<div class="col-2">
							<input type="text" id="name" class="form-control" />
						</div> -->
						<div class="col-3">
							<form:input path="name" cssClass="form-control" />
						</div>
					</div> --%>
					
					
					<div class="row">
						<div class="col-3"></div>
						<div class="col-2">
							<label for="NAME">NAME </label>
						</div>
						<div class="col-3">
							<form:input path="name" cssClass="form-control" />
						</div>
					</div>
					
					
					<div class="row">
						<div class="col-3"></div>
						<div class="col-2">
							<label for="EMAIL">EMAIL </label>
						</div>
						<div class="col-3">
							<form:input path="email" cssClass="form-control" />
						</div>
					</div>
					
					<div class="row">
						<div class="col-3"></div>
						<div class="col-2">
							<label for="SALARY">SALARY </label>
						</div>
						<div class="col-3">
							<form:input path="salary" cssClass="form-control" />
						</div>
					</div>
					
					<br>
					<br>
					<div class="row">
						<div class="col-5"></div>
						<input type="submit" value="Register" class="btn btn-primary">
					</div>
				</form:form>
			</div>
				
			
			<h5>
				<a href="liste" class="btn btn-info">View Data Here</a>
			</h5>
			<%-- <c:if test="${message !=null}">
				<div class="card-footer">${message}</div>
			</c:if> --%>
		</div>
	</div>
	<br>
<h1>Employees Data</h1>
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
	<br>
</body>
</html>