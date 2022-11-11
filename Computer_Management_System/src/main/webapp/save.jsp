<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/save.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>

<title>Computer Hardware Management System</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<H3>Save Configuration</H3>

	<div class="grid-container">

		<form id="save" action="Save">
			<div class="grid-item">
				<div class="grid-item-item">
					<div class="grid-item-item">
						<label>File Name:</label>
					</div>
					<div class="grid-item-item">
						<input type="text" name="saveID">
					</div>
				</div>
				<div class="grid-item-item">
					<div class="grid-item-item">
						<label>Email Address:</label>
					</div>
					<div class="grid-item-item">
						<input type="text" name="email">
					</div>
				</div>
				<div class="grid-item-item">
					<div class="grid-item-item">
						<input type="submit" value="Save"
							class="btn btn-primary component-btn">
					</div>
				</div>
			</div>

			<table class="results">

				<c:choose>
					<c:when test="${!empty err}">
						<tr>
							<td class="grid-item-item" id="error">${err}</td>
						</tr>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${!empty success}">
					<p class="results">Configuration saved with the following items:</p>
						<c:forEach items="${sessionScope.config.mySelectedProducts}"
							var="productSelected" varStatus="stat">
							<tr>
								<td class="grid-item-item" scope="row" class="component">${productSelected.productType}</td>
								<td class="grid-item-item">${productSelected.productID }</td>
								<td class="grid-item-item">${productSelected.description }</td>
								<td class="grid-item-item">${productSelected.price }</td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>
		</form>
	</div>
</body>
</html>