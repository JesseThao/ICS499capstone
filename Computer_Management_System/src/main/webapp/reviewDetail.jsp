<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reviews</title>
</head>
<style>
#listreview{
width:100% 
}
td
{
text-align:left;
}
th{
text-align:left;
}
</style>
<body>
	<%@ include file="review.jsp"%>
	<table id="listreview" >
		<tr>
			<th>Product ID</th>
			<th>Rating</th>
			<th>Comment</th>
		</tr>
		<c:forEach items="${reviewList.reviewList}" var="review" varStatus="stat">	
		<c:choose>
			<c:when test="${!empty param.five}">
				<c:if test="${review.rating == 5}">
				<tr>
					<td>${review.productID}</td>
					<td>${review.rating}</td>
					<td>${review.comment}</td>
				</tr>
				</c:if>
			</c:when>
			<c:when test="${!empty param.four}">
				<c:if test="${review.rating == 4}">
				<tr>
					<td>${review.productID}</td>
					<td>${review.rating}</td>
					<td>${review.comment}</td>
				</tr>
				</c:if>
			</c:when>
			<c:when test="${!empty param.three}">
				<c:if test="${review.rating == 3}">
				<tr>
					<td>${review.productID}</td>
					<td>${review.rating}</td>
					<td>${review.comment}</td>
				</tr>
				</c:if>
			</c:when>
			<c:when test="${!empty param.two}">
				<c:if test="${review.rating == 2}">
				<tr>
					<td>${review.productID}</td>
					<td>${review.rating}</td>
					<td>${review.comment}</td>
				</tr>
				</c:if>
			</c:when>
			<c:when test="${!empty param.one}">
				<c:if test="${review.rating == 1}">
				<tr>
					<td>${review.productID}</td>
					<td>${review.rating}</td>
					<td>${review.comment}</td>
				</tr>
				</c:if>
			</c:when>
			</c:choose>

			
			
		</c:forEach>
	</table>
</body>
</html>