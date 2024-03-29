<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">

<title>Update Pet</title>
<%@include file="/WEB-INF/nav.jsp"%>
</head>
<body>
	<div class="container">
		<div id="banner" class="jumbotron text-center">
			<h1>Pet Update</h1>
		</div>
	</div>
	<form:form action="updatePet.do" method="GET" modelAttribute="oldPet">
		<form:label path="name">Name: </form:label>
		<form:input path="name" required="required" default="${oldPet.name }"
			placeholder="${oldPet.name}" value="${oldPet.name}" />
		<form:errors path="name" />
		<br>
		<form:label path="breed">Breed: </form:label>
		<form:input path="breed" default="${oldPet.breed }"
			placeholder="${oldPet.breed}" value="${oldPet.breed}" />
		<form:errors path="breed" />
		<br>
		<form:label path="specialNeeds">Special Needs: </form:label>
		<form:input path="specialNeeds" default="${oldPet.specialNeeds }"
			placeholder="${oldPet.specialNeeds}" value="${oldPet.specialNeeds}" />
		<form:errors path="specialNeeds" />
		<br>
		<form:label path="description">Description:</form:label>
		<form:input path="description" type="text" required="required"
			default="${oldPet.description }" placeholder="${oldPet.description}"
			value="${oldPet.description}" />
		<form:errors path="description" />


		<br>
		<div class="container">
			<input type="hidden" name="petId" value="${oldPet.id }"> <input
				type="submit" id="updatePet" class="btn btn-outline-light"
				value="Update Pet" />
		</div>
	</form:form>
	<%@include file="/WEB-INF/footer.jsp"%>
	
</body>
</html>