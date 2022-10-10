<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="base.css"/>
	<link rel="stylesheet" type="text/css" href="print.css" media="print" charset="utf-8"/>
	<link rel="stylesheet" type="text/css" href="projglobal.css" media="screen" charset="utf-8"/>
	<link rel="alternate stylesheet" type="text/css" href="smaller.css" title="smaller" />
	<link rel="alternate stylesheet" type="text/css" href="bigger.css" title="bigger" />
	<script language="JavaScript" type="text/javascript" src="styleswitcher.js"></script>
	
	<title>Computer Hardware Management System</title>
</head>

<body>
	<img src="images/logo2.png" alt="Computer Hardware Management System"/>
	<hr>
	<ul>
	  <li><a href="/index.jsp">Home</a></li>
	  <li><a href="/login">Log In</a></li>
	  <li><a href="/save">Save</a></li>
	</ul><br />
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
				<a class="btn btn-primary component-btn" href="/product/processor">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>
		<tr class="items">
			<td scope="row" class="component">Motherboard</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/motherboard">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>			
		<tr class="items">
			<td scope="row" class="component">Case</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/case">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>					
		<tr class="items">
			<td scope="row" class="component">Graphics Card</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/graphics">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>				
		<tr class="items">
			<td scope="row" class="component">RAM</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/ram">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>	
		<tr class="items">
			<td scope="row" class="component">Storage</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/storage">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>			
		<tr class="items">
			<td scope="row" class="component">Power Supply</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/powersupply">
					<i class="fa fa-plus">
					</i>
					Add Component
				</a>
			</td>			
		</tr>			
		<tr class="items">
			<td scope="row" class="component">Monitor</td>
			<td class="select-comp" colspan="4">
				<a class="btn btn-primary component-btn" href="/product/monitor">
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