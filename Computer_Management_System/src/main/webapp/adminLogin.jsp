<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%--fixed1 --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/login.css" />

<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>


<title>Computer Hardware Management System</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<center>
	<div class="login">		
		<%
		String msg = request.getParameter("msg");
			if ("doesnotexist".equals(msg)) {
			%><h1>Incorrect Username or Password</h1><%
		}
		%><%
			if ("invalid".equals(msg)) {
			%><h1>Something went wrong! try again</h1><%
		}
		%>
	</div>
	</center>
		<center>
	<form action="adminLogin" method="post">
		<div class="element">
			<div id="table1">
			<h1>Administrator login</h1>
				<table>
					<tr>
						<td><FONT COLOR=white>EMAIL</FONT></td>
					</tr>
					<tr>
					<td><input type="text" name="email" placeholder="ENTER EMAIL" required></td>
					</tr>
					<tr>
					<td><FONT COLOR=white>PASSWORD</FONT></td>
					</tr>
					<tr>
					<td><input type="password" name="password" placeholder="ENTER PASSWORD" required></td>
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
