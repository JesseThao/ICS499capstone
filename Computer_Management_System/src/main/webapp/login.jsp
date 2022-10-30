<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="base.css" />
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
	<meta charset="ISO-8859-1">
	<H3>Sign in</H3>
	<form action="userLogin" method="post">
		<table>
	Email : <input type="text" name="email">
	Password:  <input type="text" name="password">
	 <input type="submit" value="submit">
	<a href="">Forgot Password?</a>
	<li><a href="createUser.jsp">Create an account?</a>
	</table>

	
	
	</form>
	</pre>
</body>
</html>