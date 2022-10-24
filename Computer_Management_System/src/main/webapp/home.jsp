<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="base.css" />
<script src="https://kit.fontawesome.com/887323dcd1.js"
	crossorigin="anonymous"></script>


<title>Computer Hardware Management System</title>
</head>

<body>
	<%@ include file="header.jsp" %>
	
	<table id="products">
		<tr>
			<th>Component</th>
	        <th>Product</th>
	        <th>Description</th>
	        <th>Price</th>
	        <th>Link</th>
	    </tr>
	 <form action="GetProduct">
		<tr class="items">
			<td scope="row" class="component">Processor</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Processor">				
			</td>
		</tr>
	</form>
	<form action="GetProduct">
		<tr class="items">
			<td scope="row" class="component">Motherboard</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Motherboard">				
			</td>
		</tr>	
	</form>	
	<form action="GetProduct">	
		<tr class="items">
			<td scope="row" class="component">Case</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Case">				
			</td>
		</tr>
	</form>	
	<form action="GetProduct">					
		<tr class="items">
			<td scope="row" class="component">Graphics Card</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Graphics Card">				
			</td>
		</tr>
	</form>	
	<form action="GetProduct">			
		<tr class="items">
			<td scope="row" class="component">Ram</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Ram">				
			</td>
		</tr>	
	</form>
	<form action="GetProduct">	
		<tr class="items">
			<td scope="row" class="component">Storage</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Storage">				
			</td>
		</tr>	
	</form>			
		<tr class="items">
			<td scope="row" class="component">Power Supply</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Power Supply">				
			</td>
		</tr>	
	<form action="GetProduct">			
		<tr class="items">
			<td scope="row" class="component">Monitor</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Monitor">				
			</td>
		</tr>	
	</form>	
	<form action="GetProduct">
		<tr class="items">
			<td scope="row" class="component">Accessories</td>		
			<td class="select-comp" colspan="4">
					<input type="submit" value=" + Add Component" class="btn btn-primary component-btn" />
					<input type="hidden" name="prodType" value="Accessories">				
			</td>
		</tr>	
	</form>
	</table>
	
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>