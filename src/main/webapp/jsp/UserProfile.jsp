<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>

<style>
body {
        background: url('/IMG/Lib-bg.jpg') no-repeat center center fixed; 
        background-size: cover;
        position: relative;
        
    }
    .overlay {
        position: absolute;
        top: 0.5;
        left: 0.5;
        right: 0.5;
        bottom: 0.5;
        background: rgba(0, 0, 0, 0.5); /* Black overlay with 50% opacity */
    }
.row {
        position: relative;
        z-index: 2; /* Ensure content is above the overlay */
        color: rgba(255, 255, 255, 0.8); /* White text with 80% opacity */
        flex: 1; /* Make the container take up remaining space */
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
</style>
</head>
<body>
<%@include file="userHeader.jsp"%>
	<%
	response.setHeader("Cache-Control", " no-cache,no-store,must-revalidate");//HTTP 1.0
	response.setHeader("Pragma", "no-cache");//HTTP 1.0
	response.setHeader("Expires", "0");//proxy server

	if (session.getAttribute("cuname") == null) {
		response.sendRedirect("UserLogin.jsp");
	}
	%>

	<div class="overlay"></div>
	<div class="row">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<jstl:forEach items="${list}" var="list">
				<div class="card"
					style="margin-top: 10px; color: white; background-color: #ef8172; padding: 50px; border-radius: 25px;">
					<div class="card-header">
						
						<h3>Name :${list.firstName} ${list.lastName}</h3>
					</div>
					<div class="card-body">
						<h4>
							<p>User Id: ${list.memberId}</p>
							<p>Mobile No: ${list.contactNumber}</p>
							<p>Email Id:${list.email}</p>
							<p>Gender :${list.gender}</p>
						</h4>
					</div>
					
				</div>
			</jstl:forEach>
		</div>
		<div class="col-lg-4"></div>

	</div>
	<!-- Footer -->
<div class="footer bg-dark">
    <jsp:include page="adminFooter.jsp" />
</div>
<!-- End Footer -->

</body>
</html>