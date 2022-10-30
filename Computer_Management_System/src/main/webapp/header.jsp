<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
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
					<c:choose>
						<c:when test="${product.yearsProduced > 0}">
							<li><a href="save.jsp" title="Save"><i
									class="fa-regular fa-floppy-disk fa-lg"></i></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="save.jsp" title="Save"><i
									class="fa-regular fa-floppy-disk fa-lg"></i></a></li>
						</c:otherwise>
					</c:choose>

				</ul>
			</td>
		</tr>
	</table>
</body>
</html>