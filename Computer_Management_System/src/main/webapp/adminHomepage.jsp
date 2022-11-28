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
			
				<form method="get" action="UserListServlet">
					<button type="submit" name="adminAllUser" class="link">Maintain Users</button>
				</form>			
			
				<form method="get" action="AdminGetProduct">
					<button type="submit" class="link">Maintain Products</button>
				</form>		
		
				<form method="get" action="AdminGetReview">
					<button type="submit" class="link">Maintain Reviews</button>
				</form>
		</div>
		<div class="row2">
		
		<c:choose><c:when test="${!empty errorMsg}">${errorMsg}"</c:when></c:choose>
			
			<c:forEach items="${userList}" var="user" varStatus="stat">
			<form action="UpdateUser">
				<div class="detail" style="grid-template-row:repeat(1, 50%);  grid-template-columns: repeat(5, 20%);">
					<label>Email Address</label><input type="text" name="userEmail" value="${user.emailAddress }">
					<label>First Name</label><input type="text" name="fname" value="${user.firstName }">
					<label>Last Name</label><input type="text" name="lname" value="${user.lastName }">
					<button class="dlt" type="submit" name="deleteUser"	value="${user.emailAddress }"><i class="fa-solid fa-trash fa-lg"></i></button>
					<button class="updateUser" type="submit" name="updateUser"	value="${user.emailAddress }"><i class="fa-solid fa-pen-to-square fa-lg"></i></button>
				</div>
			</form>
			</c:forEach>
		</div>
		
		<div class="row3">
			<div class="footer">Copyright 2022 All Rights Reserved.</div>
			
		</div>
	</div>
	
	
</body>
</html>