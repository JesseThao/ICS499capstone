<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<%--commit test --%>
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
	
	<div id="nav" class="adminMenu">
		<form method="get" action="AdminGetUser">
		<input type="submit" value="User List" />
		</form>
		<form method="get" action="AdminGetProduct">
		<input type="submit" value="Product List" />
		</form>
		<form method="get" action="AdminGetReview">
		<input type="submit" value="Review List" />
		</form>
	</div>
	
	<script>
		var header = document.getElementById("nav");
		var links = header.getElementsByClassName("menu_link");
		for (var i = 0; i < links.length; i++){
			links[i].addEventListener("click", function()
				var current = document.getElementsByClassName("active");
				current[0]/className = current[0].className.replace(" active", "");
				this.className += " active";
			));
		}
	</script>
	
	
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>