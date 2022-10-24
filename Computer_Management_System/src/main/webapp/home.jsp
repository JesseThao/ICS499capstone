<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="base.css"/>
	<script src="https://kit.fontawesome.com/887323dcd1.js" crossorigin="anonymous"></script>

	
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
		<tr class="items">
			<td scope="row" class="component">Processor</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="processor.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>
		</tr>
		<tr class="items">
			<td scope="row" class="component">Motherboard</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="motherboard.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>			
		<tr class="items">
			<td scope="row" class="component">Case</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="case.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>					
		<tr class="items">
			<td scope="row" class="component">Graphics Card</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="graphics.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>				
		<tr class="items">
			<td scope="row" class="component">RAM</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="ram.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>	
		<tr class="items">
			<td scope="row" class="component">Storage</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="storage.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>			
		<tr class="items">
			<td scope="row" class="component">Power Supply</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="powersupply.jsp">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>			
		<tr class="items">
			<td scope="row" class="component">Monitor</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="monitor">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>	
		<tr class="items">
			<td scope="row" class="component">Accessories</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/tbd">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>	
		<tr class="items">
			<td scope="row" class="component">USB</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/tbd">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>	
		<tr class="items">
			<td scope="row" class="component">Coming Soon</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/tbd">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>															
	</table>
	<br /><div class="footer">Copyright 2022 All Rights Reserved.</div>
</body>
</html>