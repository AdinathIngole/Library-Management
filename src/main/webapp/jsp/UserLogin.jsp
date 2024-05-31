<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="${javaScript}/userRegistration.js"></script>
<title>Login Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--css-->
<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
}
</style>
</head>


<script>
	function showHidePassword() {
		var x = document.getElementById("password1");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>

<!------ Include the above in your HEAD tag ---------->
<body>

	<%@include file="RegisterNavbar.jsp"%>

	<main class="d-flex align-items-center bg-dark banner-background"
		style="height: 70vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">

					<div class="card">
						<div class="card-header bg-dark text-white text-center">
							<span class="fa fa-user-plus fa-3x"></span> <br>
							<p> User Login </p>
						</div>

						<div class="card-body">
							<form action="userLoginValidation" method="get">
								
								<div class="control">
									<div class="row">
										<div class="col-lg-12">
											<!-- first name -->
											<label for="First name">User Name</label> <input
												autocomplete="off" type="text" name="username"
												id="username1" placeholder="User Name" class="form-control"
												required> 
										</div>
									</div>
								</div>
								
								<div class="control">
									<div class="row">
										<!-- password-->
										<div class="col-lg-12">
											<label for="password1">Password</label> <input
												autocomplete="off" type="password" name="password"
												id="password1" placeholder="password" class="form-control"
												required> 
										</div>
									</div>
								</div>
								
								<div class="control">
									<div class="row">
										<div class="col-lg-12">
											<label for="show" class="mr-2">Show </label><input autocomplete="off" type="checkbox"
												onclick="showHidePassword();">
										</div>
									</div>
								</div>

								<div class="container text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

<!-- Custom error alert -->
<c:if test="${not empty customError}">
	<script>
		alert("${customError}");
	</script>
</c:if>
</html>