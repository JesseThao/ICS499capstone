<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />

<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>


<title>Computer Hardware Management System</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h1>Administrator login</h1>
		<center>
	<form action="adminLogin" method="post">
		<div class="element">
			<div id="table1">
				<table>
					<tr>
						<td>Email :</td>
					</tr>
					<tr>
					<td><input type="text" name="email"></td>
					</tr>
					<tr>
					<td>Password:</td>
					</tr>
					<tr>
					<td><input type="text" name="password"></td>
					</tr>
					<tr>
					<td><input type="submit" value="submit"></td>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
				</table>
			</div>
		</div>
	</form>
	</center>
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>
