<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>

<title>Computer Hardware Management System</title>
</head>

<body>
	<%@ include file="header.jsp"%>

		<table id="products">
			<tr>
				<th>Product</th>
				<th>Review</th>
				<th>Description</th>
				<th>Add Product</th>
				<th>Price</th>
				<th>Link</th>
			</tr>
			<c:forEach items="${products}" var="product" varStatus="stat">	
				
				<fmt:formatNumber type="number" var="avgRate" maxFractionDigits="1" value="${product.reviewAverage}" />			
					<tr class="items">
						<form id="product" method="get" action="ProductInfo">
						<td><button  type="submit" value="${product.productID}" name="product">${product.productID}</button>
						</td>
						</form>
						<form action="RetrieveReview">
							<td width="10%"><input type="submit" value="${avgRate} star"
								class="btn btn-primary component-btn" /> <input type="hidden"
								name="prodID" value="${product.productID}">
						</form>
						</td>
						<td>${product.description}</td>
						<form action="AddProduct">
							<td><input type="submit" value="+" class="btn btn-primary component-btn" /></td>
							<input type="hidden" name="prodID" value="${product.productID}">
						</form>
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