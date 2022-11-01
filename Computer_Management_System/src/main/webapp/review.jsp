<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<p>
		<c:set var="avgRate" value="${reviewList.averageRating}" />
		<c:choose>
			<c:when test="${!empty avgRate}">
				<c:set var="total" value="${reviewList.total}" />
				<c:if test="${avgRate > 0 && avgRate <= 1}">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
				</c:if>
				<c:if test="${avgRate > 1 && avgRate <= 2}">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
				</c:if>
				<c:if test="${avgRate > 2 && avgRate <= 3}">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
				</c:if>
				<c:if test="${avgRate > 3 && avgRate <= 4}">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star"></span>
				</c:if>
				<c:if test="${avgRate > 4 && avgRate <= 5}">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
				</c:if>
				<c:if test="${avgRate <= 0}">

					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
					<span class="fa fa-star"></span>
				</c:if>
			</c:when>
			<c:otherwise>
				<span class="fa fa-star"></span>
				<span class="fa fa-star"></span>
				<span class="fa fa-star"></span>
				<span class="fa fa-star"></span>
				<span class="fa fa-star"></span>
			</c:otherwise>
		</c:choose>
		<fmt:formatNumber type="number" maxFractionDigits="1"
			value="${reviewList.averageRating}" />
		average based on ${reviewList.total} reviews.
	</p>

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
			<div>${reviewList.fiveStarCount}</div>
		</div>
		<div class="side">
			<div>4 star</div>
		</div>
		<div class="middle">
			<div class="bar-container">
				<div class="bar-4" style=width:10%></div>
			</div>
		</div>
		<div class="side right">
			<div>${reviewList.fourStarCount}</div>
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
			<div>${reviewList.threeStarCount}</div>
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
			<div>${reviewList.twoStarCount}</div>
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
			<div>${reviewList.oneStarCount}</div>
		</div>
	</div>
	<form action="CreateReview">
		<div class="center">
			<button type="submit" class="component-btn">Write Review for
				product ${productID }</button>
			<input type="hidden" name="prodID" value="${productID}">
		</div>
	</form>
</body>
</html>
