<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%--fixed --%>
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
					<li><a href="" title="getuser"><i class="fa-solid fa-users"></i></a></li>
					<%
						String email = (String) session.getAttribute("email");
						if(email == null){
					%>
					<li><a href="adminlogin.jsp" title="Log-in"><i class="fa-solid fa-right-to-bracket"></i></a></li>
					<% } else { %>
					<li><a href="logout.jsp" title="logout"><i class="fa-solid fa-right-from-bracket"></i></a></li>	
					<li><FONT COLOR=white>Hi, <%=email%></FONT><li>	
					<% } %>		
				</ul>
			</td>
		</tr>
	</table>
</body>
</html>