<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="base.css"/>
	<script src="https://kit.fontawesome.com/887323dcd1.js" crossorigin="anonymous"></script>

	
	<title>Computer Hardware Management System</title>
</head>

<body>
	<table id="header">
		<tr>
			<td><img src="images/logo3.png" alt="Computer Hardware Management System"/></td>
		</tr>
		<tr>
			<td>
				<ul>
					<li><a href="home.jsp" title="Home"><i class="fa-solid fa-house fa-lg"></i></a></li>
					<li><a href="login.jsp" title="Log-in"><i class="fa-solid fa-arrow-right-to-bracket fa-lg"></i></a></li>
					<li><a href="save.jsp" title="Save"><i class="fa-regular fa-floppy-disk fa-lg"></i></a></li>
				</ul>
			</td>
		</tr>		
	</table>

	<table id="products">
		<tr>
	        <th>Product</th>
	        <th>Review</th>
	        <th>Description</th>
	        <th>Price</th>
	        <th>Link</th>
	    </tr>
		<tr class="items">
			<td scope="row" class="component">AMD Ryzen 9 7950X</td>
			<td width="10%">
					<a href="review.jsp">
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star-half-stroke red"></i>
				</a>
			</td>
			<td>AMD Ryzen 9 7950X 16-Core, 32-Thread Unlocked Desktop Processor</td>
			<td>$699.00</td>
			<td width="5%"><a href="https://a.co/d/4m9HHMG"><i class="fa-solid fa-link fa-lg"></i></a></td>
			

		</tr>
		<tr class="items">
			<td scope="row" class="component">Intel Core i9-12900K</td>
			<td width="10%">
					<a href="review.jsp">
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star red"></i>
					<i class="fa-regular fa-star red"></i>
					<i class="fa-regular fa-star red"></i>
					<i class="fa-regular fa-star red"></i>
				</a>
			</td>
			<td>Intel Core i9-12900K Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked LGA1700 600 Series</td>
			<td>$528.82</td>
			<td><a href="https://a.co/d/3StY0mW"><i class="fa-solid fa-link fa-lg"></i></a></td>
		</tr>
			<tr class="items">
			<td scope="row" class="component">Intel Core i9-7980XE</td>
			<td width="10%">
					<a href="review.jsp">
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star red"></i>
					<i class="fa-solid fa-star red"></i>
					<i class="fa-regular fa-star red"></i>
					<i class="fa-regular fa-star red"></i>
				</a>
			</td>
			<td>Intel Core i9-7980XE Extreme Edition Processors with 18 Cores & 32 Threads</td>
			<td>$1499.00</td>
			<td><a href="https://a.co/d/3LB7caY"><i class="fa-solid fa-link fa-lg"></i></a></td>
		</tr>
	</table>

	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>