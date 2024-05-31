<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.Base64"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Contact</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
    body {
        background: url('/IMG/Lib-bg.jpg') no-repeat center center fixed; 
        background-size: cover;
        position: relative;
         min-height: 100vh; /* Ensure the body takes up at least the full height of the viewport */
        display: flex;
        flex-direction: column;
    }
    .overlay {
        position: absolute;
        top: 0.5;
        left: 0.5;
        right: 0.5;
        bottom: 0.5;
        background: rgba(0, 0, 0, 0.5); /* Black overlay with 50% opacity */
    }
    .container {
        position: relative;
        z-index: 2; /* Ensure content is above the overlay */
        color: rgba(255, 255, 255, 0.8); /* White text with 80% opacity */
         flex: 1; /* Make the container take up remaining space */
    }
    .contact-info {
        background: rgba(0, 0, 0, 0.6); /* Black background with 60% opacity */
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 50px;
    }
    .contact-info h1 {
        font-size: 2.5em;
        margin-bottom: 20px;
    }
    .contact-info p {
        font-size: 1.2em;
    }
    .contact-info p b {
        font-weight: bold;
    }
</style>
</head>
<body>
<!-- ----------------------------------------------------------------------------------------------- -->
<%@include file="RegisterNavbar.jsp" %>
<!-- -------------------------------------------------------------------------------------- -->
  
<div class="overlay"></div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 contact-info text-center">
            <h1>Welcome to Shubham Library !!</h1>
            <p>Contact Person: <b>Shubham Dhawan</b></p>
            <p>Mo No: <b>8554857471</b></p>
            <p>Email: <b>shubhamdhavan151@gmail.com</b></p>
        </div>
    </div>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<%@ include file="adminFooter.jsp"%>

</body>

</html>
