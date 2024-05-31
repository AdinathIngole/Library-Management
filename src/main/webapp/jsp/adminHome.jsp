<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/style.css">
 <style>
            .banner-background{
             clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
           </style>
<!-- Include your custom CSS file -->
</head>
<body>
<%@include file = "adminHeader.jsp" %>
	<div class="container-fluid m-0 p-0">
			<div class="jumbotron text-white banner-background bg-dark">
				<div class="container">
					<h1>Welcome to Shubham Library !!</h1>
					<p>Here ! You can issued all book for learning.</p>
					<button class="btn btn-outline-light"> Start Learning ! It`s Free.</button>
				</div>
			</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
