<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

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
	<%@ include file="adminHeader.jsp" %>
	
	<h1>Administrator Home</h1>
	
	<div>
		<table id="adminSetting">
			<tr>
				<td>
					<tr>
						<h1>Testing the layout</h1>
						<form method="get" action="UserListServlet">
						<input type="submit" value="adminUserList" />
						</form>
						<div>
						<form method="get" action="ProductServlet">
						<input type="submit" value="adminProductList" />
						</form>
						</div>
						</div>
						<form method="get" action="ReviewServlet">
						<input type="submit" value="adminReviewList" />
						</form>
						<div>
					<tr>
				<td>
			<tr>
		</table>
	</div>
	
	
	
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>