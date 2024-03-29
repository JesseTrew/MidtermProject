<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<title>My Account</title>
<%@include file="/WEB-INF/nav.jsp"%>

<body style = "background-color: #cce6f0">

	<h1>Account Details Page</h1>
	
	<c:if test="${! empty sessionUser}">

		<form action="toUserProfile.do" method="GET">
			<input type="hidden" name="id" value=${sessionUser.id } /> <input
				type="submit" class="btn btn-dark" value="View Profile" />
		</form>
			<c:if test="${empty sessionHost}">
	
				<form action="goToCreateHost.do" method="GET">
					<input type="hidden" name="id" value=${sessionUser.id } /> 
					<input type="submit" class="btn btn-dark" value="Become a Host" />
				</form>
			</c:if>
	</c:if>
	
	
	<c:if test="${!empty sessionHost}">

		<form action="goToHostPage.do" method="GET">
			<input type="hidden" name="hostId" value=${sessionHost.id } /> <input
				type="submit" class="btn btn-dark" value="Host Details" />
		</form>
	</c:if>
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-3 col-centered img-responsive">
			<img src="${sessionUser.imageURL }" height="300" width="300"/>
			</div>
			<div class="col-1 col-centered">
			</div>
			<div class="col-8 col-right">
				<div class="jumbotron col-7 col-centered text-center">
					<h1>Account Details</h1>
				</div>

			</div>
		</div>
		<br><br><br>
		<div class="container">
			<div class="row row-centered">

				<table class=" col-9 col-centered table table-hover table-secondary">
					<thead>
						<tr>
							<th><h2>View Reviews of your Pets</h2></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty sessionUser.pets }">
							<c:forEach items="${sessionUser.pets }" var="pet">
								<tr>
									<th class="lead text-center bg-secondary">Reviews for <a
										href="reservationHistory.do?petId=${pet.id}">${pet.name }</a></th>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<div class="row row-centered">

				<table class="col-9 col-centered table table-hover table-secondary">
					<thead>
						<tr>
							<th><h2>View Reviews as a Host</h2></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty sessionHost.reviewsOfHost }">
							<c:forEach items="${sessionHost.reviewsOfHost }" var="review">
								<c:if test="${not empty review.review }">
									<tr>
										<th class="lead text-center bg-secondary">Review from <a
											href="hostReservationHistory.do?hostId=${sessionHost.id}#${review.id}">${review.reservation.pet.user.firstName }</a></th>
									</tr>
								</c:if>
							</c:forEach>
						</c:if>
						<c:if test="${not empty sessionHost }">
							<tr>
								<th class="lead text-center bg-secondary"><a
									href="goToHostPage.do?hostId=${sessionHost.id}">View Your
										Host Page !</a></th>
							</tr>
						</c:if>
						<c:if test="${empty sessionHost}">
							<tr>
								<th class="lead text-center "><a
									href="goToCreateHost.do?id=${sessionUser.id}">Become a Host
										!</a></th>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>