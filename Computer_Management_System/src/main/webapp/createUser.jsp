<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/createUserStyle.css" />
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
	<form id="register" onsubmit="checkOnSubmit()" method="post" action="CreateUser">
		<div class="element">
			<div id="table1">
				<table>
					<tr>
						<td>First Name:</td>
					</tr>
					<tr>
						<td><input type="text" name="firstName" value="" id="firstname"/></td>
					</tr>
					<tr></tr>
					<tr>
						<td>Last Name:</td>
					</tr>
					<tr>
						<td><input type="text" name="lastName" value="" id="lastname"/></td>
					</tr>
					<tr>
						<td>Email:</td>
					</tr>
					<tr>
						<td><input type="text" name="email" value="" id="email"/></td>
					</tr>
					<tr>
						<td>Password:</td>
					</tr>
					<tr>
						<td><input type="password" name="password" value="" id="pwd" />
							<div id="pwd-toggle">
								<i class="fa-solid fa-eye"></i> <i class="fa-solid fa-eye-slash"></i>
							</div></td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td><input type="submit" value="Sign Up"></td>
					</tr>
				</table>
			</div>

			<div class="table2">
				<table>
					<tr>
						<td>Password Requirement</td>
					</tr>
					<tr>
						<td id="upper"><i class="fa-solid fa-x"></i><FONT COLOR=red> Upper-case</td>
					</tr>
					<tr>
						<td id="lower"><i class="fa-solid fa-x"></i><FONT COLOR=red> Lower-case</td>
					</tr>
					<tr>
						<td id="number"><i class="fa-solid fa-x"></i><FONT COLOR=red> Number</td>
					</tr>
					<tr>
						<td id="length"><i class="fa-solid fa-x"></i><FONT COLOR=red> At least 8
							characters</td>
					</tr>
				</table>
			</div>
		</div>
	</form>
	<script src="js/createUserMod.js"></script>
</body>
</html>