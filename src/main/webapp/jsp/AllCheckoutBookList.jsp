<%@page import="java.util.Base64"%>
<%@ include file="userHeader.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<style>
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
<div class="main-content mx-2">
	<div class="container">
		<!-- Table -->
		<!-- <h2 class="mb-5">Tables Example</h2> -->
		<div class="row ">
			<div class="col">
				<div class="card shadow ">
					<div class="card-header border-0 bg-dark text-white text-center">
						<h2 class="mb-0 ">My Checkout Books</h2>
					</div>
					<div class="table-responsive bg-light">
						<table class="table align-items-center table-flush">
							<thead class="thead-light">
								<tr>
									
									<th scope="col">Checkout Id</th>
									<th scope="col">Checkout Date</th>
									<th scope="col">Due Date</th>
									<th scope="col">Return Date</th>
									<th scope="col">Book Id</th>
									<th scope="col">Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="check" items="${checkoutList}">
									<tr>
									
										<td><c:out value="${check.checkoutId}" /></td>
										<td><c:out value="${check.checkoutDate}" /></td>
										<td><c:out value="${check.dueDate}" /></td>
										<td><c:out value="${check.returnDate}" /></td>
										<td><c:out value="${check.book.bookName}" /></td>
										
										<td>
											<div class="dropdown">
												<div>
												 <a href="/deleteCheckoutBook?checkoutId=${check.checkoutId}"
														class="btn btn-danger btn-sm rounded-0" type="button"
														data-toggle="tooltip" data-placement="top" title="Delete"
														onclick="return confirmDelete()"> <i
														class="fa fa-trash"></i>Return Book
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
						class="d-flex flex-wrap justify-content-between card-footer py-4 bg-light">

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

<script>
	function confirmDelete() {
		return confirm("Are you sure you want to delete this book?");
	}
</script>

<%
// Set the parameters as request attributes
request.setAttribute("footer", "fixed-bottom");
// ...
%>
<!-- Footer -->
    <footer class="footer bg-dark">
        <jsp:include page="adminFooter.jsp" />
    </footer>
    <!-- End Footer -->