<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="profile" method="get" action="MyProfile">
		<table>
			<tr>Test MyProfile<td><input type="text" value="bxbx@gmail.com" name="email"/></td></tr>
		</table>
	</form>
	<button onclick="checkOnSubmit1()" id="submit-btn">SIGN UP</button>
	
	<form id="product" method="get" action="ProductInfo">
		<table>
			<tr>Test ProductInfo<td><input type="text" value="P000001" name="product"/></td></tr>
		</table>
	</form>
	<button onclick="checkOnSubmit2()" id="submit-btn">SIGN UP</button>
	<script src="js/testMod.js"></script>
	<select class="form-control" id="StudentGender" name="StudentGender">
    <option>Select Gender</option> 
    <option>Male</option> 
    <option>Female</option> 
</select>
</body>
</html>