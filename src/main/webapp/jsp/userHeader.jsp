<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.LMS.Entity.Member" %>
 <%-- <%

    Member user = (Member) session.getAttribute("cuname");
    if (user == null) {
        response.sendRedirect("UserLogin.jsp");
    }


%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">

<link href="css/allBooksStyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" href="/css/login.css">
</head>
<body>
	<%-- <c:if test="${empty user.username}">
		<c:redirect url="/" />
	</c:if>
	 --%>
	<div class="container-fluid bg-primary navbar-expand-lg">
		<div class="px-4">
			<header
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
				<div class="d-flex flex-wrap">
					<a href="/userHome"
						class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none text-white">
						<Span class="fa fa-book"></Span> Library
					</a>
					<ul class="nav nav-pills">
						<li class="nav-item"><a href="/userHome"
							class="nav-link navs text-white" aria-current="page">Home</a></li>
						<li class="nav-item"><a href="showBookList"
							class="nav-link navs text-white">Book Lists</a></li>
						<li class="nav-item"><a href="/adminContact"
							class="nav-link navs text-white">Contact</a></li>
							<li class="nav-item"><a href="/getUserProfile"
							class="nav-link navs text-white">Profile</a></li>
					</ul>
				</div>

				<ul class="navbar-nav text-white">
			<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-toggle="dropdown" aria-expanded="false"> <span
						class="fa fa-user-circle"></span> Logout
				</a>
					<div class="dropdown-menu bg-primary text-white">
						<a class="dropdown-item" href="/getUserProfile">User Profile
							</a> <a class="dropdown-item" href="/UserLogout">User Logout
							</a>
					</div></li>
			</ul>
			</header>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" 
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
	crossorigin="anonymous">
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" 
	crossorigin="anonymous">
	</script>
	</body>