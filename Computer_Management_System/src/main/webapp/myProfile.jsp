<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/profile.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>
<title>My Profile Page</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<form method="post" action="UpdateUser">
		<div id="info">
			<table id="table0">
				<tr>
					<th id="profile-header">My Profile</th>
				</tr>
				<tr>
					<td>
						<table id="tableImage">
							<tr>
								<td>
									<div id="myImage">
										<table id="table2">
											<tr>
												<td><div id="image">Image Here</div></td>
											</tr>
										</table>
									</div>
								</td>
								<td>
									<table class="table1">
										<tr>
											<td>First Name</td>
										</tr>
										<tr>
											<td><input type="text" name="firstName"
												value="${loggedInUser.firstName}"
												id="inputFN" /></td>
										</tr>
										<tr>
											<td>Email</td>
										</tr>
										<tr>
											<td><input type="text" name="email"
												value="${loggedInUser.emailAddress}"
												id="inputEmail" readonly/></td>
										</tr>
									</table>
								</td>
								<td>
									<table class="table1">
										<tr>
											<td>Last Name</td>
										</tr>
										<tr>
											<td><input type="text" name="lastName"
												value="${loggedInUser.lastName}"
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
								<td class="update-btn"><input type="submit" name="updateProfile" value="UPDATE"id="update" /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<script src="js/createUserMod.js"></script>
</body>
</html>
