<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Register</title>
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
<!------ Include the above in your HEAD tag ---------->

<script>
function showHidePassword() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	
//Function to validate form fields and show success message
function validateAndSubmit() {
    var userName = document.getElementById("userName").value;
    var password = document.getElementById("password").value;
    var email = document.getElementById("email").value;
    var agreeTerms = document.getElementById("exampleCheck1").checked;

    if (userName.trim() === '' || password.trim() === '' || email.trim() === '') {
        alert("Please fill out all fields.");
        return false; // Prevent form submission
    } else if (!agreeTerms) {
        alert("Please agree to the terms and conditions.");
        return false; // Prevent form submission
    } else {
        alert("Registration successful!");
        return true; // Allow form submission
    }
}
</script>
<body>

	<%@include file="RegisterNavbar.jsp"%>
	<main class="d-flex align-items-center bg-dark banner-background"
		style="padding-bottom: 80px;">

		<div class="container">

			<div class="col-md-6 offset-md-3">

				<div class="card">
					<div class="card-header text-center bg-dark text-white">
						<span class="fa fa-3x fa-user-circle"></span> <br>Admin Registration
					</div>
					<div class="card-body">
						<form id="reg-form" action="createAccount" method="POST">

							<div class="form-group">
								<label for="userName">First Name</label> <input name="userName"
									type="text" class="form-control" id="userName"
									aria-describedby="userName" placeholder="Enter Username">
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input
									name="password" type="password" class="form-control"
									id="password" placeholder="Enter Password"><input autocomplete="off" type="checkbox"
							onclick="showHidePassword();">
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input name="email"
									type="email" class="form-control" id="email"
									aria-describedby="emailHelp" placeholder="Enter email" required>
							</div>

							<div class="form-check">
								<input name="check" type="checkbox" class="form-check-input"
									id="exampleCheck1" required> <label class="form-check-label"
									for="exampleCheck1" >agree terms and conditions</label>
							</div>

							<br>

							<div class="container text-center" id="loader"
								style="display: none;">
								<span class="fa fa-refresh fa-spin fa-4x"></span>
								<h4>Please wait..</h4>
							</div>
							<div class="form-group col-lg-12 text-center">
							<button id="sumbimt-btn" type="submit" class="btn btn-primary" onclick="validateAndSubmit()">Submit</button>

							</div>
						</form>

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