<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.pad{
	    padding: 5px 0px;
}
</style>
</head>
<body>
	<div class="container col-sm-4">
		<h1 class="h3">Welcome ${message}!</h1>
		<c:if test="${addMsg ne null}">
			<div class="alert alert-success alert-dismissible fade show"
				role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${addMsg}</strong>
			</div>
		</c:if>
		<div class="card ">
			<div class="card-header">
				<strong> Add Employee</strong>
			</div>
			<div class="card-block pad">
			<span></span>
				<form action="add" method="post">
					<div class="form-group row">
						<label class="col-lg-5  offset-lg-1 col-form-label">Employee Name:</label>
						<div class="col-lg-5">
							<input class="form-control" type="text" name="name" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-lg-5 offset-lg-1 col-form-label">Employee Salary:</label>
						<div class="col-lg-5">
							<input class="form-control" type="number" name="salary" required>
						</div>
					</div>
					<div class="form-row text-center">
					<div class="col-sm-6 pad">
						<input type="submit" value="Add" class="btn btn-success center-block" />
					</div>
					<div class="col-sm-6 pad">
						<a href="view" class="btn btn-primary">View All</a>
					</div>

					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

