<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/review.css" />


<title>Write Review</title>
</head>
<body>
	<%@ include file="review.jsp"%>

	<span class="heading">Enter Rating for product "${productID}"</span>
	<br>
	<form action="CreateReview">
	<div class="radio-toolbar">
		<input type="radio" id="radio1" name="rating" value="1"> <label for="radio1"><span class="fa fa-star"></span></label>
		<input type="radio" id="radio2" name="rating" value="2"> <label for="radio2"><span class="fa fa-star"></span></label>
		<input type="radio" id="radio3" name="rating" value="3"> <label for="radio3"><span class="fa fa-star"></span></label>
		<input type="radio" id="radio4" name="rating" value="4"> <label for="radio4"><span class="fa fa-star"></span></label>
		<input type="radio" id="radio5" name="rating" value="5"> <label for="radio5"><span class="fa fa-star"></span></label>
	</div>
		
		<br><br><br>
		
		<span class="heading">Comment</span> <br>

		<textarea name="comment" cols="40" rows="5"></textarea>
		<br>
		<input type="submit" class="component-btn" name="submit">
		change

	</form>

</body>
</html>