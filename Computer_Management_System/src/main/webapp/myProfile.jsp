<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/test.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>
<title>My Profile Page</title>
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
	<div>
		<form method="post" action="UpdateeUser">
			<div id="info">
				<table id="page-header">
					<tr>
						<th id="profile-header">My Profile</th>
					</tr>
					<tr>
						<td>
							<table id="table1">
								<tr>
									<td>
										<div id="myImage">
											<table>
												<tr>
													<td><div id="image">Image Here</div></td>
												</tr>
											</table>
										</div>
									</td>
									<td>
										<table>
											<tr>
												<td>First Name</td>
											</tr>
											<tr>
												<td><input type="text" name="firstName"
													value="<%String firstName = (String) request.getAttribute("firstname");
out.print(firstName);%>"
													id="inputFN" /></td>
											</tr>
											<tr>
												<td>Email</td>
											</tr>
											<tr>
												<td><input type="text" name="email"
													value="<%String email = (String) request.getParameter("email");
out.print(email);%>"
													id="inputEmail" disabled /></td>
											</tr>
										</table>
									</td>
									<td>
										<table>
											<tr>
												<td>Last Name</td>
											</tr>
											<tr>
												<td><input type="text" name="lastName"
													value="<%String lastName = (String) request.getAttribute("lastname");
out.print(lastName);%>"
													id="inputLN" /></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table id="table2">
								<tr>
									<td>
										<table id="bioTable">
											<tr>
												<td>Bio</td>
											</tr>
											<tr>
												<td><textarea name="bio" cols="50" rows="10" id="bio" /></textarea></td>
											</tr>
										</table>
									</td>
									<td class="update-btn"><input type="submit" value="UPDATE"
										id="update" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>