<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="base.css" />
<link rel="stylesheet" type="text/css" href="login.css"/>
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>
<title>Create User Result</title>
</head>
<body>
	<table id="header">
		<tr>
			<td><img src="images/logo3.png"
				alt="Computer Hardware Management System" /></td>
		</tr>
		<tr>
			<td>
				<ul>
					<li><a href="home.jsp" title="Home"><i
							class="fa-solid fa-house fa-lg"></i></a></li>
					<li><a href="login.jsp" title="Log-in"><i
							class="fa-solid fa-arrow-right-to-bracket fa-lg"></i></a></li>
					<li><a href="save.jsp" title="Save"><i
							class="fa-regular fa-floppy-disk fa-lg"></i></a></li>
				</ul>
			</td>
		</tr>
	</table>
	<h1>User Registration:</h1>
	<form id="login" method="post" action="CreateUser">
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
</body>
</html>