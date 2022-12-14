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
	<form action="GetProduct">
		<table id="products">
			<tr>
							
				<c:choose>
					<c:when test="${config.selectedProduct != false}">
						<th width="10%">Component</th>	
						<th width="5%">Delete</th>
						<th>Product</th>
						<th>Description</th>
						<th>Price</th>
						<th>Link</th>
					</c:when>
					<c:otherwise>
					<th width="15%">Component</th>	
					<th></th>
					<th>Add Product</th>
					<th></th>
					<th></th>
</c:otherwise>
				</c:choose>
			</tr>
			<c:choose>
				<c:when test="${config.selectedProduct == false}">
					<c:forEach items="${sessionScope.config.components}"
						var="component" varStatus="stat">
						<tr class="items">
							<td scope="row" class="component">${component}</td>
							<td width="5%"></td>
							<td class="select-comp" colspan="4">
							<button class="btn btn-primary component-btn" type="submit" name="selectProd" value="${component }">
													<i class="fa-solid fa-plus"></i>Add Component</button></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach items="${sessionScope.config.mySelectedProducts}"
						var="productSelected" varStatus="stat">
						<tr class="items">
							<c:choose>
								<c:when test="${!empty productSelected.productID}">
									<tr class="items">
										<td scope="row" class="component">${productSelected.productType}</td>
										<td width="5%">
										<button class="dlt" type="submit" name="deleteProd"	value="${productSelected.productID }">
											<i class="fa-solid fa-trash fa-lg"></i></button></td>
										<td>${productSelected.productID }</td>


										<td>${productSelected.description }</td>
										<td>${productSelected.price }</td>
										<td width="5%"><a href="${productSelected.link }"><i
												class="fa-solid fa-link fa-lg"></i></a></td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr class="items">
										<td scope="row" class="component">${productSelected.productType}</td>
										<td width="5%"></td>
										<td class="select-comp" colspan="4">
										<button class="btn btn-primary component-btn" type="submit" name="selectProd" value="${productSelected.productType }">
													<i class="fa-solid fa-plus"></i>Add Component</button></td>
									</tr>

								</c:otherwise>

							</c:choose>
						</tr>
					</c:forEach>

				</c:otherwise>
			</c:choose>
		</table>
	</form>
	<br />
	<div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>