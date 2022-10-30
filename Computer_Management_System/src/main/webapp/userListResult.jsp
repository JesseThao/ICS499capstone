<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.User"%>
    
<%ArrayList userList = (ArrayList) request.getAttribute("userList"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%for(int i = 0;i<userList.size(); i++){%>
	<% User user = (User) userList.get(i);%>
	<%= user.getFirstName() %><br/>
	<%= user.getLastName() %><br/>
	<%= user.getEmailAddress() %><br/>
<%} %>

</body>
</html>