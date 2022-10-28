<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="base.css"/>
	<script src="https://kit.fontawesome.com/887323dcd1.js" crossorigin="anonymous"></script>

	
	<title>Computer Hardware Management System</title>
</head>

<body>
	<table id="header">
		<tr>
			<td><img src="images/logo3.png" alt="Computer Hardware Management System"/></td>
		</tr>
		<tr>
			<td>
				<ul>
					<li><a href="home.jsp" title="Home"><i class="fa-solid fa-house fa-lg"></i></a></li>
					<li><a href="login.jsp" title="Log-in"><i class="fa-solid fa-arrow-right-to-bracket fa-lg"></i></a></li>
					<li><a href="save.jsp" title="Save"><i class="fa-regular fa-floppy-disk fa-lg"></i></a></li>
				</ul>
			</td>
		</tr>		
	</table>


<head>
<meta charset="ISO-8859-1">
<title>Create User Result</title>
</head>
<body>
<center>
	<h1>User Registration:</h1>
	<form method="post" action="CreateUser">
		<table>
			<tr>
				<td>First Name:</td>
				<td><input name="firstName" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input name="lastName" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input name="email" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input name="password" type="password" /></td>
			</tr>
			<tr>
				<td />
				<td><input type="submit" value="Add" /></td>
		</table>
	</form>
</center>
</body>
</html>