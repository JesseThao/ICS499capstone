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
<form id="save" action="Save">
	<div class="element">

		
			<H1>Save Configuration</H1>
			<div class="table1">
			<table>
					<tr>
						<td><FONT COLOR=white>EMAIL</FONT></td>
					</tr>
					<tr>
					<td><input type="text" name="email" placeholder="Enter Email" required></td>
					</tr>
					<tr>
					<td><FONT COLOR=white>FILENAME</FONT></td>
					</tr>
					<tr>
					<td><input type="text" name="saveID" placeholder="Enter filename" required></td>
					</tr>
					<tr>
					<td><input type="submit" value="Save" class="savebtn"></td>
					</tr>
				</table>
			</div>
	</div>

	<table class="results">
		<c:choose>
			<c:when test="${!empty err}">
				<tr>
					<td class="element" id="error">${err}</td>
				</tr>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${!empty success}">
				<p class="results">Configuration saved with the following items:</p>
				<c:forEach items="${sessionScope.config.mySelectedProducts}"
					var="productSelected" varStatus="stat">
					<tr>
						<td class="element" scope="row" class="component">${productSelected.productType}</td>
						<td class="element">${productSelected.productID }</td>
						<td class="element">${productSelected.description }</td>
						<td class="element">${productSelected.price }</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	</form>
</body>
</html>