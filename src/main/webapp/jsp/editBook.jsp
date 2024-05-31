<%@ include file="adminHome.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link href="css/addBookStyle.css" rel="stylesheet" type="text/css">

<div class="container-fluid px-1 mx-auto">
	<div class="row d-flex justify-content-center">
		<div class="col-xl-10 col-lg-8 col-md-9 col-11 text-center">
			<div class="card" style="margin-top: 30px;
    margin-bottom: 30px;">
				<h5 class="text-center mb-4">
					<b>EDIT BOOK DETAILS</b>
				</h5>
				<form:form action = "editBook" class="form-card" method="post" modelAttribute="book" >
					<div class="row justify-content-between text-left my-4">
						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="bookId">Book Id<span
									class="text-danger"> *</span>
							</form:label>
							<form:input class="form-control" type="hidden" id="bookId" name="bookId" path="bookId"
								placeholder="Enter the Book Id" value="${book.bookId}" onblur="validate(1)" />
							<form:errors path="bookId" cssClass="text-danger"></form:errors>
							
						</div>
					</div>
					<div class="row justify-content-between text-left my-4">
						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="bookName">Book Name<span
									class="text-danger"> *</span>
							</form:label>
							<form:input type="text" id="bookName" name="bookName"
								path="bookName" placeholder="Enter the Book Name" value="${book.bookName }"
								onblur="validate(3)" />
							<form:errors path="bookName" cssClass="text-danger"></form:errors>
						</div>
						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3"
								path="publicationYear">Publication Year<span
									class="text-danger"> *</span>
							</form:label>
							<form:input type="number" id="publicationYear"
								name="publicationYear" path="publicationYear"
								placeholder="Enter the Publication Year" value="${book.publicationYear }" onblur="validate(4)" />
							<form:errors path="publicationYear" cssClass="text-danger"></form:errors>
						</div>
					</div>
					<div class="row justify-content-between text-left my-4">

						<div class="form-group col-sm-6 flex-column d-flex">
							<form:label class="form-control-label px-3" path="bookAuthor">Author<span
									class="text-danger"> *</span>
							</form:label>
							<form:input type="text" id="bookAuthor" name="bookAuthor"
								path="bookAuthor" placeholder="Enter the Book Author Name" Value="${book.bookAuthor }"
								onblur="validate(3)" />
							<form:errors path="bookAuthor" cssClass="text-danger"></form:errors>
						</div>
					</div>
					<div class="row justify-content-between text-left mb-4">
						<div class="form-group col-sm-6 flex-column d-flex mt-3">
							<div class="form-check">
								<form:checkbox class="form-check-input" path="availability"
									id="flexCheckDefault" />
								<form:label class="form-check-label" for="flexCheckDefault"
									path="availability">Is Book Available in the Library</form:label>
							</div>
						</div>
					</div>
					<div class="row justify-content-between mt-2">
						<div class="form-group col-sm-6">
							<button class="btn btn-primary rounded-pill px-3" type="submit">Submit</button>
						</div>
						<div class="form-group col-sm-6">
							<a href="/bookLists"><button class="btn btn-danger rounded-pill px-3" type="button">Cancel</button></a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>

<%@ include file="adminFooter.jsp"%>