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
	<h1>Sign in</h1>
		<center>
	<form action="userLogin" method="post">
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
					<td><input type="submit" value="login"></td>
					</tr>
					<tr>
					<td><a href="">Forgot Password?</a></td>
					</tr>
					<tr>
					<td><a href="createUser.jsp">Create an account?</a></td>
					</tr>
				</table>
			</div>
	</form>
	</center>
	</pre>
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
	<td><a href="http://localhost:8081/Computer_Management_System/adminLogin.jsp">admin login</a></td>
</body>
</html>