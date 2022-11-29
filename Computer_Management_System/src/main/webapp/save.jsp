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
		<center>
<form id="save" action="Save">
	<div class="element">
			<H1>Save Configuration</H1>
			<div class="table1">
			<table>
					<tr>
						<td><FONT COLOR=white>EMAIL</FONT></td>
					</tr>
					<tr>
					<td><input type="text" name="email" value="${loggedInUser.emailAddress }" placeholder="Enter Email" required></td>
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
	<center>
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
				<p class="results"> <FONT COLOR=#1d3f66>CONFIGURATION SAVED WITH THE FOLLOWING ITEMS:</FONT></p>
				<center>
				<c:forEach items="${sessionScope.config.mySelectedProducts}"
					var="productSelected" varStatus="stat">
					<tr>
						<td  class="element2" scope="row" class="component"><FONT COLOR=white><center>${productSelected.productType}</center></FONT></td>
						<td class="element2"><FONT COLOR=white>${productSelected.productID }</FONT></td>
						<td class="element2"><FONT COLOR=white>${productSelected.description }</FONT></td>
						<td class="element2"><FONT COLOR=white>${productSelected.price }</FONT></td>
					</tr>
				</c:forEach>
				</center>
			</c:when>
		</c:choose>
	</table>
	</center>
	</form>
	</center>
</body>
</html>