<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<h1 class="h3">Welcome ${message}!</h1>
		<c:if test="${deleteMsg ne null}">
			<div class="alert alert-danger alert-dismissible fade show"
				role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${deleteMsg}</strong> 
			</div>
		</c:if>
		<table class="table col-sm-10 border">
		<thead class="thead-inverse"> 
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>SALARY</th>
				<th>DELETE</th>
			</tr>
			</thead>
			<c:forEach items="${empList}" var="employee">
				<tr>
					<th scope="row"><c:out value="${employee.id}" /></td>
					<td><c:out value="${employee.name}" /></td>
					<td><c:out value="${employee.salary}" /></td>
					<td><a class="btn btn-danger"
						href="delete?id=<c:out value="${employee.id}" />">delete</a></td>
				</tr>
			</c:forEach>
			
		</table>
	
				<div class="offset-sm-5 col-sm-2"><a href="/" class="btn btn-primary span12 ">Add</a></div>

		
	</div>
</body>
</html>