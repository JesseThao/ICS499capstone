<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create User Result</title>
</head>
<body>
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
</body>
</html>