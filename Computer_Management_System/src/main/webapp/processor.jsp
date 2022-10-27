<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<th>Price</th>
			<th>Link</th>
		</tr>
		<c:forEach items="${products}" var="product" varStatus="stat">
		<tr class="items">
			<td>${product.productID}</td>
			<td width="10%"><a id="starlink" href="RetrieveReview"> 
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span>
			<span class="fa-solid fa-star red"></span>
			<span class="fa-solid fa-star red"></span>
			<i class="fa-solid fa-star-half-stroke red"></i>
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