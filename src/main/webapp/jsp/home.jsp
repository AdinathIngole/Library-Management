<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Library Management System</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <!--css-->
        <style>
            .banner-background {
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
            body {
                background-image: url('/IMG/Lib-bg.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                color: #ffffff;
            }
            .content-section {
                padding: 50px 0;
                background-color: rgba(0, 0, 0, 0.6);
            }
            .content-section h2 {
                margin-bottom: 20px;
            }
            .content-section p {
                margin-bottom: 15px;
            }
             footer {
                background-color: #343a40;
                color: white;
                padding: 20px 0;
            }
            footer .footer-content {
                display: flex;
                justify-content: space-between;
                align-items: center;
                flex-wrap: wrap;
            }
            footer .footer-content div {
                margin: 10px 0;
            }
            footer .footer-content a {
                color: #ffffff;
                text-decoration: none;
            }
            footer .footer-content a:hover {
                text-decoration: underline;
            }
        </style>
</head>
<body>
<!-- ----------------------------------------------------------------------------------------------- -->
<%@include file="RegisterNavbar.jsp" %>
<!-- -------------------------------------------------------------------------------------- -->
    <div class="container-fluid m-0 p-0">
        <div class="jumbotron text-white banner-background bg-dark">
            <div class="container">
                <h1>Welcome to Shubham Library !!</h1>
                <p>Here ! You can issue all books for learning.</p>
                <button class="btn btn-outline-light">Start Learning! It's Free.</button>
            </div>
        </div>
    </div>

    <div class="container content-section">
        <div class="row">
            <div class="col-md-6 text-white">
                <h2>About Our Library</h2>
                <p>Shubham Library is a haven for book lovers and knowledge seekers. Our extensive collection includes books from various genres, academic texts, journals, and much more. Whether you're looking for the latest bestsellers or classic literature, we have something for everyone.</p>
                <p>Our mission is to promote reading and lifelong learning. We offer a peaceful environment where you can immerse yourself in your favorite books or conduct research in a conducive setting.</p>
                <p>Join us today and start your journey of exploration and enlightenment. Our friendly staff is always here to assist you with finding the right resources and making the most of our services.</p>
            </div>
            <div class="col-md-6 text-white">
                <h2>Services Offered</h2>
                <ul>
                    <li>Book Lending</li>
                    <li>Research Assistance</li>
                    <li>Reading Rooms</li>
                    <li>Free Wi-Fi</li>
                    <li>Community Events and Workshops</li>
                    <li>Online Catalog and eBooks</li>
                </ul>
                <p>We are committed to making knowledge accessible to all. Our library also provides digital resources and online catalogs for easy access to our collection from the comfort of your home.</p>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <%@ include file="adminFooter.jsp"%>
</body>
</html>
