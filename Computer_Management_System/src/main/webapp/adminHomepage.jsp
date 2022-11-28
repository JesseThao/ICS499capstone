<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>


<title>Computer Hardware Management System</title>
</head>

<body>
	<%@ include file="header.jsp"%>
	<h1>Administrator Home</h1>
	<div class="container">
		<div class="row1">	
				<p></p>			
				<form method="get" action="UserListServlet">
					<button type="submit" name="adminAllUser" class="link">Maintain Users</button>
				</form>			
										
				<form method="get" action="adminProdMaint.jsp">
					<button type="submit" class="link">Maintain Products</button>
				</form>	
				<p></p>			
		</div>
		<c:choose>
		<c:when test="${!empty userList}">
		<div class="row2">
			<c:choose><c:when test="${!empty errorMsg}">${errorMsg}"</c:when></c:choose>
			<c:forEach items="${userList}" var="user" varStatus="stat">
			<form action="UpdateUser">
				<div class="detail" style="grid-template-row:repeat(1, 50%);  grid-template-columns: repeat(6, 15%);">
					<label>Email Address</label><input type="text" name="userEmail" value="${user.emailAddress }" readonly>
					<label>First Name</label><input type="text" name="fname" value="${user.firstName }">
					<label>Last Name</label><input type="text" name="lname" value="${user.lastName }">
					<label>Password</label><input type="text" name="lname" value="${user.password}">
					<button class="dlt" type="submit" title="Delete" name="deleteUser"	value="${user.emailAddress }"><i class="fa-solid fa-trash fa-lg"></i></button>
					<button class="updateUser" type="submit" title="Update User" name="updateUser"	value="${user.emailAddress }"><i class="fa-solid fa-pen-to-square fa-lg"></i></button>
				</div>
			</form>
			</c:forEach>
		</div>
		</c:when>
		<c:when test="${!empty product}">
		<div class="searchRow">
			<h2>Product Detail</h2>
			<form action="MaintainProduct">
				<div class="section" style="grid-template-row:repeat(1, 50%);  grid-template-columns: repeat(7, 15%);">
					<label>Product ID: </label><input type="text" name="productID" value="${product.productID }" readonly>
					<label>Product Type: </label><input type="text" name="productType" value="${product.productType }">
					<label>Product Description: </label><input type="text" name="productDescription" value="${product.description }">
					<label>Product Price: </label><input type="text" name="productPrice" value="${product.price }">
					<label>Product Link: </label><input type="text" name="productLink" value="${product.link }">
					<button class="dlt" type="submit" title="Delete" name="deleteProduct" value="${product }"><i class="fa-solid fa-trash fa-lg"></i></button>
					<button class="updateUser" type="submit" title="Update Product" name="editProduct"	value="${product }"><i class="fa-solid fa-pen-to-square fa-lg"></i></button>
				</div>
			</form>
		</div>
		</c:when>
		<c:otherwise>
		<div class="row2">
			<div class="detail" style="grid-template-row:repeat(1, 50%);  grid-template-columns: repeat(6, 15%);">
				<div>${product}</div>
			</div>
		</div>
		</c:otherwise>
		</c:choose>
		<div class="row3">
			<div class="footer">Copyright 2022 All Rights Reserved.</div>
		</div>
	</div>
	
	
</body>
</html>