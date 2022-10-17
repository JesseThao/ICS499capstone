<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="login.css"/>
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
	<H3>Login to your Account</H3>
	
	<form id="login" action="">
		<table>
			<tr>
				<td>Email:</td>
				<td><input type="text"></td></tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td></tr>
			</tr>
			<tr>
				<td>
					<input type="submit" value="Login" >
				</td>
			</tr>	
			<tr>
				<td>
					<a href="">Forgot Password?</a>
				</td>
				<td>
					<a href="">Create new account</a>	
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>