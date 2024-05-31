<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
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
.password-toggle {
    cursor: pointer;
    margin-right: 10px;
    margin-top: -25px;
    position: relative;
    z-index: 2;
}
</style>
</head>

<script>
function togglePasswordVisibility(fieldId, iconId) {
    var field = document.getElementById(fieldId);
    var icon = document.getElementById(iconId);
    if (field.type === "password") {
        field.type = "text";
        icon.classList.remove('fa-eye');
        icon.classList.add('fa-eye-slash');
    } else {
        field.type = "password";
        icon.classList.remove('fa-eye-slash');
        icon.classList.add('fa-eye');
    }
}

function validateForm() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var agreeTerms = document.getElementById("exampleCheck1").checked;

    if (password !== confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }

    if (!agreeTerms) {
        alert("Please agree to the terms and conditions.");
        return false;
    }

    alert("Registration successful!");
    return true;
}

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("reg-form").addEventListener("submit", function(event) {
        if (!validateForm()) {
            event.preventDefault(); // Prevent form submission if validation fails
        }
    });
});
</script>

<body>
    <%@include file="RegisterNavbar.jsp"%>
    <main class="d-flex align-items-center bg-dark banner-background"
        style="padding-bottom: 80px;">

        <div class="container">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header text-center bg-dark text-white">
                        <span class="fa fa-3x fa-user-circle"></span> <br> User Registration
                    </div>
                    <div class="card-body">
                        <form id="reg-form" action="createMember" method="POST">
                            <div class="control">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <!-- first name -->
                                        <label for="firstName">First Name</label> 
                                        <input autocomplete="off" type="text" name="firstName"
                                            id="firstName" placeholder="Enter First Name"
                                            class="form-control" required="">
                                    </div>
                                    <div class="col-lg-6">
                                        <!-- last name -->
                                        <label for="lastName">Last Name</label> 
                                        <input autocomplete="off" type="text" name="lastName"
                                            id="lastName" placeholder="Enter Last Name"
                                            class="form-control" required="">
                                    </div>
                                </div>
                            </div>

                            <div class="control">
                                <div class="row">
                                    <!-- email -->
                                    <div class="col-lg-6">
                                        <label for="email">Email</label> 
                                        <input autocomplete="off" type="email"
                                            name="email" id="email" placeholder="Enter Email"
                                            class="form-control" required="">
                                    </div>
                                    <!-- mobile no -->
                                    <div class="col-lg-6">
                                        <label for="contactNumber">Mobile No</label> 
                                        <input autocomplete="off" type="tel"
                                            name="contactNumber" id="contactNumber"
                                            placeholder="Enter Mobile Number"
                                            class="form-control" required="">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="control">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <label for="gender">Gender:</label> 
                                        <input autocomplete="off" type="radio"
                                            id="gender" name="gender" value="Male" required=""> <label
                                            for="male">Male</label> 
                                        <input autocomplete="off" type="radio"
                                            id="gender" name="gender" value="Female" required=""> <label
                                            for="female">Female</label> 
                                        <input autocomplete="off" type="radio"
                                            id="gender" name="gender" value="Other" required=""> <label
                                            for="other">Other</label>
                                    </div>
                                </div>
                            </div>

                            <div class="control">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <!-- username -->
                                        <label for="username">User Name:</label> 
                                        <input autocomplete="off" type="text"
                                            name="username" id="username" placeholder="Enter Username"
                                            class="form-control" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="control">
                            <div class="row">
                            <div class="col-lg-12">
                                        <!-- password -->
                                        <label for="password">Password:</label> 
                                        <input autocomplete="off" type="password"
                                            name="password" id="password" placeholder="Enter Password"
                                            class="form-control" required="">
                                        <div>
                                        <span class="fa fa-eye password-toggle" id="passwordIcon"
                                            onclick="togglePasswordVisibility('password', 'passwordIcon');">Show/Hide</span>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <br>
                            <div class="control">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <!-- confirm password -->
                                        <label for="confirmPassword">Confirm Password:</label> 
                                        <input autocomplete="off" type="password"
                                            name="confirmPassword" id="confirmPassword"
                                            placeholder="Confirm Password" class="form-control"
                                            required="">
                                            <div>
                                            <span class="fa fa-eye password-toggle" id="confirmPasswordIcon"
                                            onclick="togglePasswordVisibility('confirmPassword', 'confirmPasswordIcon');">Show/Hide</span>
                                   				
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="form-check">
                                <input name="check" type="checkbox" class="form-check-input"
                                    id="exampleCheck1"> 
                                <label class="form-check-label"
                                    for="exampleCheck1">Agree to terms and conditions</label>
                            </div>

                            <br>
                            <div class="container text-center" id="loader"
                                style="display: none;">
                                <span class="fa fa-refresh fa-spin fa-4x"></span>
                                <h4>Please wait..</h4>
                            </div>
                            <div class="form-group col-lg-12 text-center">
                                <button id="submit-btn" type="submit" class="btn btn-success btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

<!-- Custom error alert -->
<c:if test="${not empty customError}">
    <script>
        alert("${customError}");
    </script>
</c:if>
</html>
