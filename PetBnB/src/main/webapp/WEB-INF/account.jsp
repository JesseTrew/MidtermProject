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
</head>

<body>

	<div class="container">

		<div class="resultsSingle" style="margin-top: 15px">
			<h1>
				<strong>${nothing }</strong>
			</h1>
		</div>

		<c:if test="${not empty sessionUser }">
			<div class="resultsSingle" style="margin-top: 15px">
				<div class="col-sm">
					<h1>
						<strong>${user.firstName} ${user.lastName }</strong>
					</h1>
					<h2>${user.username}</h2>
					<h2>${user.email }</h2>
				</div>

				<div class="resultsSingle">
					<table class="table">
						<th>List of Pets</th>
						<c:forEach items="${user.pets }" var="pet">
							<c:if test="${pet.active == true}">
								<tr>
									<td><a href="getPet.do?petId=${pet.id}"
										class="btTxt submit">${pet.name }</a></td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</div>
			</div>
		</c:if>
			<c:if test="${empty sessionHost }">

				<form action="becomeHost.do" method="GET">
					<input type="hidden" name="id" value=${sessionUser.id } /> <input
						type="submit" class="btn btn-outline-light" value="Become a Host" />
				</form>
			</c:if>

</body>
</html>