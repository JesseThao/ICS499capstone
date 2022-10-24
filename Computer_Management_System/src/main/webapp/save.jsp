<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="save.css" />
<link rel="stylesheet" type="text/css" href="base.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>

<title>Computer Hardware Management System</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<H3>Save Configuration</H3>

	<div class="grid-container">

		<form id="login" action="Save">
			<label>Configuration Name:</label><input type="text"
				name="configName"><br> <input type="submit"
				value="Login">
		</form>
	</div>
</body>
</html>