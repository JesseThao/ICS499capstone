<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/product.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>
<title>My Profile Page</title>
</head>
<body>
<%@ include file="header.jsp"%>
		<div id="info">
			<table id="table0">
				<tr>
					<th id="profile-header">Product Detail</th>
				</tr>
				<tr>
					<td>
						<table id="table1">
							<tr>
								<td>
									<table id="imageTable">
										<tr>
											<td><img src="<%String image = (String) request.getParameter("product"); String imageName = image; image = "images/" + image + ".jpg"; out.print(image);%>" name="<%out.print(imageName); %>" id="image"></td>
										</tr>
										<tr>
											<td><div id="arrow"><i class="fa-solid fa-arrow-left" onclick="arrowLeft()" id="arrowLeft"></i> <i class="fa-solid fa-arrow-right" onclick="arrowRight()" id="arrowRight"></i></div></td>
										</tr>
									</table>
								</td>
								<td>
									<table id="table2">
										<tr>
											<td>Name:<%
											String name = (String) request.getAttribute("name");
											out.print(name);
											%>
											</td>
										</tr>
										<tr>
											<td>Cores:<%
											String cores = (String) request.getAttribute("cores");
											out.print(cores);
											%>
											</td>
										</tr>
										<tr>
											<td>Speed:<%
											String speed = (String) request.getAttribute("speed");
											out.print(speed);
											%>
											</td>
										</tr>
										<tr>
											<td>Socket:<%
											String socket = (String) request.getAttribute("socket");
											out.print(socket);
											%>
											</td>
										</tr>
										<tr>
											<td>Power:<%
											String power = (String) request.getAttribute("power");
											out.print(power);
											%>
											</td>
										</tr>
										<tr>
											<td>Released:<%
											String released = (String) request.getAttribute("released");
											out.print(released);
											%>
											</td>
										</tr>
										<tr>
										<form action="AddProduct">
											<%
											String id = (String) request.getParameter("product");
											%>
											<td><input type="submit" value="+" class="btn btn-primary component-btn" /><input type="hidden" name="prodID" value="<%out.print(id);%>"/></td>
										</form>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	<script src="js/createUserMod.js"></script>
</body>
</html>