<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@page import="java.util.Base64"%>
<%@ include file="userHeader.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="css/addBookStyle.css" rel="stylesheet" type="text/css">

<div class="container-fluid px-1 mx-auto">
	<div class="row d-flex justify-content-center">
		<div class="col-xl-10 col-lg-8 col-md-9 col-11 text-center">
			<div class="card" style="margin-top: 30px;
    margin-bottom: 30px;">
				<h5 class="text-center mb-4">
					<b>ADD CHECKOUT DETAILS</b>
				</h5>
				<form:form class="form-card" method="post" modelAttribute="checkout"
					enctype="multipart/form-data" id="FormId">
					
					<div class="row justify-content-between text-left my-4">
					
						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="book">Book<span
									class="text-danger"> *</span>
							</form:label>

							<form:select class="form-select mt-2 py-2"
								aria-label="Default select example" name="bookId" path="book.bookId" id="bookId">
								<c:forEach items="${books}" var="b">
									<option value="${b.bookId}">${b.bookName}
									</option>
								</c:forEach>
							</form:select>

							<form:errors path="book" cssClass="text-danger"></form:errors>
						</div>
					</div>
					
					<div class="row justify-content-between text-left my-4">
						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="member">Member<span
									class="text-danger"> *</span>
							</form:label>

							<form:select class="form-select mt-2 py-2"
								aria-label="Default select example" path="member.memberId">
								<c:forEach items="${members}" var="m">
									<option value="${m.memberId}">${m.firstName}
										${m.lastName}</option>
								</c:forEach>
							</form:select>

							<form:errors path="member" cssClass="text-danger"></form:errors>
						</div>
						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="checkoutDate">Checkout Date<span
									class="text-danger"> *</span>
							</form:label>
							<form:input type="date" id="checkoutDate" name="checkoutDate"
								path="checkoutDate" onblur="validate(4)" />
							<form:errors path="checkoutDate" cssClass="text-danger"></form:errors>
						</div>
					</div>
					<div class="row justify-content-between text-left my-4">

						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="dueDate">Due Date<span
									class="text-danger"> *</span>
							</form:label>
							<form:input type="date" id="dueDate" name="dueDate"
								path="dueDate" onblur="validate(4)" />
							<form:errors path="dueDate" cssClass="text-danger"></form:errors>
						</div>

						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="returnDate">Return Date<span
									class="text-danger"> *</span>
							</form:label>
							<form:input type="date" id="returnDate" name="returnDate"
								path="returnDate" onblur="validate(4)" />
							<form:errors path="returnDate" cssClass="text-danger"></form:errors>
						</div>
					</div>
					<div class="row justify-content-between mt-2">
						<div class="form-group col-sm-6">
							<button class="btn btn-primary rounded-pill px-3" type="submit">Submit</button>
						</div>
						<div class="form-group col-sm-6">
							<a href="/checkoutLists"><button
									class="btn btn-danger rounded-pill px-3" type="button">Cancel</button></a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
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
<!-- Custom error alert -->
<c:if test="${not empty customError}">
	<script>
		alert("${customError}");
	</script>
</c:if>


