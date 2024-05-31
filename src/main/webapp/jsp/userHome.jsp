<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Base64"%>
<%@ include file="userHeader.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<style type="text/css">

body {
        background: url('/IMG/Lib-bg.jpg') no-repeat center center fixed; 
        background-size: cover;
        position: relative;
        
    }
.footer {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #333;
            color: white;
            text-align: center;
            padding: 0px 0;
        }
        .card {
            
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
</style>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col-md-6 text-center mx-auto">
			<div class="card bg-dark text-white ">
			<h1>Welcome to Shubham Library !!</h1>
				<h2>Library Information</h2>
                    <p>Welcome to Shubham Library! We are dedicated to providing a wide range of books and resources to our members. Whether you're interested in fiction, non-fiction, academic research, or leisure reading, we have something for everyone.</p>
                    <p>Feel free to explore our collection, borrow books, attend events, and make the most of your library membership. Our friendly staff is always available to assist you with any inquiries or recommendations.</p>
                    <p>Thank you for being a part of our library community!</p>
               
			</div>
				
			</div>
		</div>
	</div>
	
	<!-- Footer -->
<div class="footer bg-dark">
    <jsp:include page="adminFooter.jsp" />
</div>
<!-- End Footer -->
</body>
</html>