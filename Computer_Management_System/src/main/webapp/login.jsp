<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%--fixed1 --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>


<title>User Login</title>
</head>
<body>
	<center>
	<%@ include file="header.jsp"%>
	<div class="login">
		<%
		String msg = request.getParameter("msg");
			if ("doesnotexist".equals(msg)) {
			%><div class="error"></div><h1>Incorrect Username or Password</h1></div><%
		}
		%><%
			if ("invalid".equals(msg)) {
			%><h1>Something went wrong! try again</h1><%
		}
		%>
	</div>
	</center>
		<center>
	<form action="userLogin" method="post">
		<div class="element">
			<div id="table1">
			<h1>SIGN IN</h1>
				<table>
					<tr>
						<td><FONT COLOR=white>EMAIL</FONT></td>
					</tr>
					<tr>
					<td><input type="text" name="email" placeholder="Enter Email" required></td>
					</tr>
					<tr>
					<td><FONT COLOR=white>PASSWORD</FONT></td>
					</tr>
					<tr>
					<td><input type="password" name="password" placeholder="Enter Password" required></td>
					</tr>
					<tr>
					<td><input type="submit" value="login"></td>
					</tr>
					<tr>
					<td><a href="forgotPassword.jsp"><FONT COLOR=white>Forgot Password?</a></td>
					</tr>
					<tr>
					<td><a href="createUser.jsp"><FONT COLOR=white>New User?</a></td>
					</tr>
					<tr>
					<td><a href="adminLogin.jsp"><FONT COLOR=white>Administrator login</a></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
	</center>
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>