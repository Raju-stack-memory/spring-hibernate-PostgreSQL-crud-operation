<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Add Product</h1>
				<table class="table caption-top table-responsive">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="products">
							<tr>
								<th scope="row">TECHONLY ${products.id}</th>
								<td>${products.name }</td>
								<td>${products.description }</td>
								<td class="font-weight-bold">&#x20B9; ${products.price }</td>
								<td>
								<a href="delete/${products.id }"><i class="fas fa-trash-alt text-danger"></i></a>
								<a href="update/${products.id }"><i class="fas fa-pen-nib text-primary"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
