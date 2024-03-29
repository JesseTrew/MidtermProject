<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>BOOP!</title>
<%@include file="nav.jsp"%>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/styles2.css">
<link
	href="https://fonts.googleapis.com/css?family=Fredoka+One|Roboto:300,400"
	rel="stylesheet">

<style>
.responsive {
  width: 90%;
  height: auto;
}
</style>
</head>
<body class="bg-dark">
	<form:form action="findReservationById.do" method="GET">
		<label style="font-family: Courier; color: Green;">Reservation
			by ID:</label>
		<input type="number" required="required" name="rid" />
		<input type="submit" value="Show Reservation" />
		<form:errors path="firstName" />
	</form:form>


	<div
		class="jumbotron jumbo-vertical-center text-light text-center bg-dark mb-0 radius-0">

	<!-- 	<div class="container">
				<div class="row mx-sm-n5">
					<div class="col-sm-4 px-sm">
					</div>

					<div class="col-sm-4 px-sm">
					<p></p>
					</div>

					<div class="col-sm-4 px-sm">
					</div>
				</div>
		</div> -->

		<div class="container">
			<img src="https://i.imgur.com/j2DdPcK.png"height="750" class="responsive"/>

			<br>

 			<p><font face="verdana" size="6">Pet sitters for the discerning pet owner, and pet owners for discerning sitters.</font></p>

			<div class="mt-4">
				<form action="searchHost.do">
					<input type="text" name="city" placeholder="City" /> <select
						class="custom-select" name="state" style="width: 150px;">
						<option selected="">State</option>
						<option value="AL">AL</option>
						<option value="AK">AK</option>
						<option value="AZ">AZ</option>
						<option value="AR">AR</option>
						<option value="CA">CA</option>
						<option value="CO">CO</option>
						<option value="CT">CT</option>
						<option value="DE">DE</option>
						<option value="DC">DC</option>
						<option value="FL">FL</option>
						<option value="GA">GA</option>
						<option value="HI">HI</option>
						<option value="ID">ID</option>
						<option value="IL">IL</option>
						<option value="IN">IN</option>
						<option value="IA">IA</option>
						<option value="KS">KS</option>
						<option value="KY">KY</option>
						<option value="LA">LA</option>
						<option value="ME">ME</option>
						<option value="MD">MD</option>
						<option value="MA">MA</option>
						<option value="MI">MI</option>
						<option value="MN">MN</option>
						<option value="MS">MS</option>
						<option value="MO">MO</option>
						<option value="MT">MT</option>
						<option value="NE">NE</option>
						<option value="NV">NV</option>
						<option value="NH">NH</option>
						<option value="NJ">NJ</option>
						<option value="NM">NM</option>
						<option value="NY">NY</option>
						<option value="NC">NC</option>
						<option value="ND">ND</option>
						<option value="OH">OH</option>
						<option value="OK">OK</option>
						<option value="OR">OR</option>
						<option value="PA">PA</option>
						<option value="RI">RI</option>
						<option value="SC">SC</option>
						<option value="SD">SD</option>
						<option value="TN">TN</option>
						<option value="TX">TX</option>
						<option value="UT">UT</option>
						<option value="VT">VT</option>
						<option value="VA">VA</option>
						<option value="WA">WA</option>
						<option value="WV">WV</option>
						<option value="WI">WI</option>
						<option value="WY">WY</option>
					</select> <input type="submit" class="btn btn-danger btn-lg m-2 btn-wide"
						value="Search by location" />
				</form>

				<form action="searchService.do">
					<select class="custom-select" name="serviceId"
						style="width: 150px;">
						<option value="1">Grooming</option>
						<!-- <option value="2">Custom Meal Making</option> -->
						<option value="3">Walking</option>
						<!--<option value="4">Petting</option> -->
						<option value="5">Overnight Stays</option>
						<option value="6">Nail Trim</option>
						<option value="7">Day Sitting</option>
						<!-- <option value="8">Hourly</option> -->
					</select> <input type="submit" class="btn btn-danger btn-lg m-2 btn-wide"
						value="Search by service" />
				</form>
			</div>
		</div>
	</div>

	<%@include file="/WEB-INF/footer.jsp"%>

	<!-- Optional JavaScript -->
	<script>
		var coll = document.getElementsByClassName("collapsible");
		var i;

		for (i = 0; i < coll.length; i++) {
			coll[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var content = this.nextElementSibling;
				if (content.style.display === "block") {
					content.style.display = "none";
				} else {
					content.style.display = "block";
				}
			});
		}
	</script>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>



</body>
</html>
