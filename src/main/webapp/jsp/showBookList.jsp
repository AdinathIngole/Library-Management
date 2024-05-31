<%@page import="java.util.Base64"%>
<%@ include file="userHeader.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<style>
body {
        background: url('/IMG/Lib-bg.jpg') no-repeat center center fixed; 
        background-size: cover;
        position: relative;
         min-height: 100vh; /* Ensure the body takes up at least the full height of the viewport */
        display: flex;
        flex-direction: column;
    }
.main-content {
        position: relative;
        z-index: 2; /* Ensure content is above the overlay */
        color: rgba(255, 255, 255, 0.8); /* White text with 80% opacity */
        flex: 1; /* Make the container take up remaining space */
    }
</style>
<div class="main-content mx-2">
	<div class="container">
		
		<div class="row">
			<div class="col">
				<div class="card shadow">
					<div class="card-header border-0 bg-dark text-white text-center">
						<h2 class="mb-0 ">Book List</h2>
					</div>
					<div class="table-responsive">
						<table class="table align-items-center table-flush">
							<thead class="thead-light">
								<tr>
									<th scope="col">Book Id</th>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Publication Year</th>
									<th scope="col">Availability</th>
									<th scope="col">Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="book" items="${bookList}">
									<tr>
										<td><c:out value="${book.bookId}" /></td>
										<td><c:out value="${book.bookName}" /></td>
										<td><c:out value="${book.bookAuthor}" /></td>
										<td><c:out value="${book.publicationYear}" /></td>
										<td><c:if test="${book.availability}">
										<span class="badge text-bg-success rounded-pill px-2 py-2 h2">Available</span>
											</c:if> <c:if test="${!book.availability}">
												<span class="badge text-bg-danger rounded-pill px-2 py-2 h2">Unavailable</span>
											</c:if></td>
										<td>
											<div class="dropdown">
												<div>
													<a href="/addCheckout?bookId=${book.bookId}"
														class="btn btn-primary btn-sm rounded-0" type="button"
														data-toggle="tooltip" data-placement="top" title="Issue Book"
														onclick="return confirmIssued(${book.bookName})"> Issue Book
													</a>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div
						class="d-flex flex-wrap justify-content-between card-footer py-4">

						<nav aria-label="...">

							<ul class="pagination justify-content-end mb-0">
								<c:if test="${paginationResult.currentPage > 1}">
									<li class="page-item"><a class="page-link"
										href="?page=${paginationResult.currentPage - 1}" tabindex="-1">
											<span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
									</a></li>
								</c:if>

								<c:forEach begin="1"
									end="${paginationResult.totalItems / paginationResult.pageSize + 1}"
									var="page">
									<c:if test="${paginationResult.currentPage == page}">
										<li class="page-item active"><a class="page-link"
											href="#">${page} <span class="sr-only">(current)</span></a></li>
									</c:if>
									<c:if test="${paginationResult.currentPage != page}">
										<li class="page-item"><a class="page-link"
											href="?page=${page}">${page}</a></li>
									</c:if>
								</c:forEach>

								<c:if
									test="${paginationResult.currentPage < (paginationResult.totalItems / paginationResult.pageSize)}">
									<li class="page-item"><a class="page-link"
										href="?page=${paginationResult.currentPage + 1}"> <span
											aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
									</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- Dark table -->
	</div>
</div>

<script>
	function confirmIssued(bookName) {
		return confirm("You have Successfully Issued Book" +bookName});
	}
</script>

<%
// Set the parameters as request attributes
request.setAttribute("footer", "fixed-bottom");
// ...
%>

<%@ include file="adminFooter.jsp"%>