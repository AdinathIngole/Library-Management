<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - Shubham Library</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- css -->
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
</style>
</head>
<body>
<!-- ----------------------------------------------------------------------------------------------- -->
<%@include file="RegisterNavbar.jsp" %>
<!-- -------------------------------------------------------------------------------------- -->
    <div class="container-fluid m-0 p-0">
        <div class="jumbotron text-white banner-background bg-dark">
            <div class="container">
                <h1>About Shubham Library</h1>
                <p>Discover the world of knowledge and imagination.</p>
            </div>
        </div>
    </div>

    <div class="container content-section">
        <div class="row">
            <div class="col-md-12 text-white">
                <h2>Our Mission</h2>
                <p>At Shubham Library, our mission is to cultivate a love for reading and to promote lifelong learning. We strive to provide a welcoming and inclusive environment where individuals of all ages can explore, learn, and grow. Our library serves as a community hub, offering resources, services, and programs that support the educational, informational, and recreational needs of our patrons.</p>
                
                <h2>History</h2>
                <p>Shubham Library was founded in 2000 with a modest collection of books and a vision to create a knowledge center for the community. Over the years, we have expanded our collection, services, and facilities to meet the growing needs of our patrons. Today, we boast a diverse collection of over 50,000 books, periodicals, and digital resources, making us one of the leading libraries in the region.</p>
                
                <h2>Our Collection</h2>
                <p>We offer an extensive collection of materials across various genres and formats. Our collection includes:</p>
                <ul>
                    <li>Fiction and Non-Fiction Books</li>
                    <li>Academic Texts and Journals</li>
                    <li>Magazines and Newspapers</li>
                    <li>eBooks and Audiobooks</li>
                    <li>Multimedia Resources</li>
                    <li>Special Collections and Archives</li>
                </ul>
                
                <h2>Services and Programs</h2>
                <p>Shubham Library is dedicated to providing a wide range of services and programs to enhance the learning experience of our patrons. These include:</p>
                <ul>
                    <li>Book Lending and Interlibrary Loans</li>
                    <li>Research and Reference Assistance</li>
                    <li>Reading Rooms and Study Spaces</li>
                    <li>Free Wi-Fi and Computer Access</li>
                    <li>Community Events, Workshops, and Seminars</li>
                    <li>Children's Programs and Storytimes</li>
                    <li>Online Catalog and Digital Library Access</li>
                </ul>
                
                <h2>Community Engagement</h2>
                <p>We believe in the power of community and the importance of giving back. Shubham Library actively engages with the community through various outreach programs, partnerships, and volunteer opportunities. We aim to create a space where everyone feels welcome and can contribute to the collective growth and well-being of our community.</p>
                
                <h2>Visit Us</h2>
                <p>We invite you to visit Shubham Library and experience all that we have to offer. Whether you're looking for a quiet place to study, seeking research assistance, or simply want to discover your next great read, our library is here to serve you. Our friendly staff is always available to help you navigate our resources and make the most of your visit.</p>
                
                <p>Thank you for being a part of the Shubham Library community. We look forward to welcoming you!</p>
            </div>
        </div>
    </div>

  <!-- ----------------------------------------------------------------------------------------------- -->
<%@include file="adminFooter.jsp" %>
<!-- -------------------------------------------------------------------------------------- -->
  

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
