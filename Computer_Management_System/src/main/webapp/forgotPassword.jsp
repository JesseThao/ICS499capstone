<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/forgotPassword.css" />


<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>


<title>Forgot Password</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="login">
		<%
		String msg = request.getParameter("msg");
		if ("done".equals(msg)) {
		%><h1>Password Successfully Reset</h1><%
		}
		%>
		<%if ("invalid".equals(msg)) {
		%><h1>Something went wrong! try again</h1><%
		}
		%>
	</div>
	<center>
		<form action="forgotPassword" method="get">
			<div class="element">
				<div id="table1">
					<h1>Password Reset</h1>
					<table>
						<tr>
							<td><FONT COLOR=white>EMAIL</td>
						</tr>
						<tr>
							<td><input type="text" name="email" placeholder="Enter Email" required></td>
						</tr>
						<tr>
							<td><FONT COLOR=white>FIRST NAME</td>
						</tr>
						<tr>
							<td><input type="text" name="firstName" placeholder="Enter First Name" required></td>
						</tr>
						<tr>
							<td><FONT COLOR=white>LAST NAME</td>
						</tr>
						<tr>
							<td><input type="text" name="lastName" placeholder="Enter Last Name" required></td>
						</tr>
						<tr>
							<td><FONT COLOR=white>NEW PASSWORD</td>
						</tr>
						<tr>
							<td><input type="password" name="password" placeholder="Enter New Password" required></td>
						</tr>
						<tr>
							<td><input type="submit" value="Save"></td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</center>
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>