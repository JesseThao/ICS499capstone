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
	<div class="adminProduct">
		
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
		
		<div class="searchRow">
			<form action="MaintainProduct">
				<div class="section" style="grid-template-row:repeat(4, 50%);  grid-template-columns: repeat(1, 50%);">
					<h2>Search Product</h2>
				</div>
				
				<div class="section" style="grid-template-row:repeat(4, 50%);  grid-template-columns: repeat(1, 50%);">
					<label>Enter Product ID: </label><input type="text" name="productID" />
					<button class="updateUser" type="submit" name="searchProduct"><i class="fa-solid fa-magnifying-glass fa-lg"></i></button>
				</div>
				</form>
				<form action="MaintainProduct">
				<div class="section" style="grid-template-row:repeat(4, 50%);  grid-template-columns: repeat(1, 50%);">
				<h2>Create Product</h2>
				</div>
				<div class="section" style="grid-template-row:repeat(5, 50%);  grid-template-columns: repeat(1, 50%);">
					<label>Enter ID: </label><input type="text" name="productID" value="${product.productID }">
					<label>Enter Type: </label><input type="text" name="productType" value="${product.productType }">
					<label>Enter Description: </label><input type="text" name="productDescription" value="${product.description }">
					<label>Enter Price: </label><input type="text" name="productPrice" value="${product.price }">
					<label>Enter Link: </label><input type="text" name="productLink" value="${product.link }">
					<button class="updateUser" type="submit" title="Add Product" name="createProduct" value="${product }"><i class="fa-solid fa-square-plus fa-lg"></i></button>
				</div>
			</form>
		</div>
		
		<div class="row3"></div>		
	</div>
	<div class="footer">Copyright 2022 All Rights Reserved.</div>	
</body>
</html>