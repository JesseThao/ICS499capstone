<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/user.css" />
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
		<div id="info">
			<table id="table0">
				<tr>
					<th id="profile-header">User Registration</th>
				</tr>
				<tr>
					<td>
						<table id="table1">
							<tr>
								<td>
									<form id="register" method="post" action="CreateUser">
									<table id="table2">
										<tr>
											<td>First Name:</td>
										</tr>
										<tr>
											<td><input type="text" name="firstName" value=""
												id="inputFN" required/></td>
										</tr>
										<tr></tr>
										<tr>
											<td>Last Name:</td>
										</tr>
										<tr>
											<td><input type="text" name="lastName" value=""
												id="inputLN" required/></td>
										</tr>
										<tr>
											<td>Email:</td>
										</tr>
										<tr>
											<td><input type="text" name="email" value=""
												id="inputEmail" required/></td>
										</tr>
										<tr>
											<td>Password:</td>
										</tr>
										<tr>
											<td><input type="password" name="password" value="" id="pwd" required/><td>
												<div id="pwd-toggle">
														<i class="fa-solid fa-eye" id="show" onclick="togglePDW(this.id)"></i>
														<i class="fa-solid fa-eye-slash" id="hide" onclick="togglePDW(this.id)"></i>
												</div>
											</td>
										</tr>
										
										<tr>
											<td></td>
										</tr>
									</table>
									</form>
								</td>
								<td>
									<table id="table3">
										<tr>
											<td>Password Requirement</td>
										</tr>
										<tr>
											<td id="upper"><i class="fa-solid fa-x"></i><FONT
												COLOR=red> Upper-case</FONT></td>
										</tr>
										<tr>
											<td id="lower"><i class="fa-solid fa-x"></i><FONT
												COLOR=red> Lower-case</FONT></td>
										</tr>
										<tr>
											<td id="number"><i class="fa-solid fa-x"></i><FONT
												COLOR=red> Number</FONT></td>
										</tr>
										<tr>
											<td id="length"><i class="fa-solid fa-x"></i><FONT
												COLOR=red> 8 characters</FONT></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><button onclick="checkOnSubmit()" id="submit-btn">SIGN UP</button></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	<script src="js/createUserMod.js"></script>
</body>
</html>