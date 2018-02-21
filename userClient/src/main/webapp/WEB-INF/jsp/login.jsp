<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculate</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-sm-4">
		<c:if test="${errorMsg ne null}">
			<div class="alert alert-danger alert-dismissible fade show"
				role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${errorMsg}</strong>
			</div>
		</c:if>
		<div class="card ">
			<div class="card-header">
				<strong>Login</strong>
			</div>
			<div class="card-block">
			<span></span>
				<form action="add" method="post">
					<div class="form-group row">
						<label class="col-5  offset-1 col-form-label">Username:</label>
						<div class="col-5">
							<input class="form-control" type="text" name="name">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-5 offset-1 col-form-label">Password:</label>
						<div class="col-5">
							<input class="form-control" type="text" name="salary">
						</div>
					</div>
					<div class="row">
					<div class="col-2 offset-sm-4">
						<input type="submit" value="Login" class="btn btn-success" />
					</div>
					
					</div>
					<span></span>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

