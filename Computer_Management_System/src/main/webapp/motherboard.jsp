<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CHMS</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<table id="products">
		<tr>
			<th>Product</th>
			<th>Review</th>
			<th>Description</th>
			<th>Price</th>
			<th>Link</th>
		</tr>
		<c:forEach items="${products}" var="product" varStatus="stat">
			<tr class="items">
				<td>${product.productID}</td>
				<td width="10%"><a href="review.jsp"> <i
						class="fa-solid fa-star red"></i> <i class="fa-solid fa-star red"></i>
						<i class="fa-solid fa-star red"></i> <i
						class="fa-solid fa-star red"></i> <i
						class="fa-solid fa-star-half-stroke red"></i>
				</a></td>
				<td>${product.description}</td>
				<td>${product.price}</td>
				<td width="5%"><a href="https://a.co/d/4m9HHMG"><i
						class="fa-solid fa-link fa-lg"></i></a></td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>