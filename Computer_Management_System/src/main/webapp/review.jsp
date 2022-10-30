<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/review.css" />

<!-- Font Awesome Icon Library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<%@ include file="header.jsp"%>
	
	<span class="heading">User Rating</span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star"></span>
	<p>4.1 average based on 254 reviews.</p>
	
	<hr style="border:3px solid #f1f1f1">

	<div class="row">
		<div class="side">
			<div>5 star</div>
		</div>
		<div class="middle">
			<div class="bar-container">
				<div class="bar-5"></div>
			</div>
		</div>
		<div class="side right">
			<div>150</div>
		</div>
		<div class="side">
			<div>4 star</div>
		</div>
		<div class="middle">
			<div class="bar-container">
				<div class="bar-4"></div>
			</div>
		</div>
		<div class="side right">
			<div>63</div>
		</div>
		<div class="side">
			<div>3 star</div>
		</div>
		<div class="middle">
			<div class="bar-container">
				<div class="bar-3"></div>
			</div>
		</div>
		<div class="side right">
			<div>15</div>
		</div>
		<div class="side">
			<div>2 star</div>
		</div>
		<div class="middle">
			<div class="bar-container">
				<div class="bar-2"></div>
			</div>
		</div>
		<div class="side right">
			<div>6</div>
		</div>
		<div class="side">
			<div>1 star</div>
		</div>
		<div class="middle">
			<div class="bar-container">
				<div class="bar-1"></div>
			</div>
		</div>
		<div class="side right">
			<div>20</div>
		</div>
	</div>
	<form action="CreateReview">
		<div class="center">
  		<button type="submit" class="component-btn">Write Review for product ${productID}</button>
  		<input type="hidden" name="prodID" value="${productID}">
		</div>
	</form>
</body>
</html>
