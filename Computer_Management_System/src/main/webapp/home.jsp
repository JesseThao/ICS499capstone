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
			<th>Component</th>
			<th>Product</th>
			<th>Description</th>
			<th>Price</th>
			<th>Link</th>
		</tr>
		<form action="GetProduct">
			<tr class="items">
				<td scope="row" class="component">Processor</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Processor'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Processor"></td>
					</c:otherwise>
				</c:choose>

			</tr>
			<tr class="items">
				<td scope="row" class="component">Motherboard</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Motherboard'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Motherboard"></td>
					</c:otherwise>
				</c:choose>				
			<tr class="items">
				<td scope="row" class="component">Case</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Case'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Case"></td>
					</c:otherwise>
				</c:choose>				
			</tr>
			<tr class="items">
				<td scope="row" class="component">Graphics Card</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Graphic Card'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Graphic Card"></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr class="items">
				<td scope="row" class="component">Ram</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Ram'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Ram"></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr class="items">
				<td scope="row" class="component">Storage</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Storage'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Storage"></td>
					</c:otherwise>
				</c:choose>				
			</tr>
		<tr class="items">
			<td scope="row" class="component">Power Supply</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Power Supply'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Power Supply"></td>
					</c:otherwise>
				</c:choose>
		</tr>
			<tr class="items">
				<td scope="row" class="component">Monitor</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Monitor'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Monitor"></td>
					</c:otherwise>
				</c:choose>				
			</tr>		
			<tr class="items">
				<td scope="row" class="component">Accessories</td>
				<c:choose>
					<c:when
						test="${!empty product.productID && product.productType == 'Accessories'}">
						<td>${product.productID }</td>
						<td>${product.description }</td>
						<td>${product.price }</td>
						<td width="5%"><a href="${product.link }"><i
								class="fa-solid fa-link fa-lg"></i></a></td>
					</c:when>
					<c:otherwise>
						<td class="select-comp" colspan="4"><input type="submit"
							name="selectProd" value=" + Add Component"
							class="btn btn-primary component-btn" /> <input type="hidden"
							name="prodType" value="Accessories"></td>
					</c:otherwise>
				</c:choose>					
			</tr>
		</form>
	</table>

	<br />
	<div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>