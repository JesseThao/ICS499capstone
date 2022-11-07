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
<form method="get" action="ProductInfo">
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
								<table>
									<tr>
										<td>
											Product Image Here
										</td>
									</tr>
								</table>
							</td>
							<td>
								<table id="table2">
									<tr>
										<td>
											name:<%String name =(String) request.getAttribute("name"); out.print(name);%>
										</td>
									</tr>
									<tr>
										<td>
											Cores:<%String cores =(String) request.getAttribute("cores"); out.print(cores);%>
										</td>
									</tr>
									<tr>
										<td>
											Speed:<%String speed =(String) request.getAttribute("speed"); out.print(speed);%>
										</td>
									</tr>
									<tr>
										<td>
											Socket:<%String socket =(String) request.getAttribute("socket"); out.print(socket);%>
										</td>
									</tr>
										<tr>
										<td>
											TDP:<%String tdp =(String) request.getAttribute("tdp"); out.print(tdp);%>
										</td>
									</tr>
										<tr>
										<td>
											Released:<%String released =(String) request.getAttribute("released"); out.print(released);%>
										</td>
									</tr>
									<tr>
										<td>
											<input type="submit" name="submit"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>