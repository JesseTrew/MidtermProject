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
<link
	href="https://fonts.googleapis.com/css?family=Fredoka+One|Roboto:300,400"
	rel="stylesheet">

<style>
.centerBlock {
  display: table;
  margin: auto;
}
</style>
<title>Add a Pet</title>
<%@include file="/WEB-INF/nav.jsp"%>
</head>
<body style = "background-color: #cce6f0">
	<div class="container">
		<div class="row mx-sm-n5">
			<div class="col-sm-4 px-sm">
			</div>
			
			<div class="col-sm-4 px-sm">
			<p></p>
			</div>
			
			<div class="col-sm-4 px-sm">
			</div>
		</div>
	</div>
	<br>
	
	<div class="container">
		<div class="row mx-md-n5">
			
			<div class="col-md-3 px-sm">
			</div>
			
			<div class="col-md-6 px-sm">
				<div class="p-3 border border-dark bg-light rounded">
					<div class="centerBlock">			
						<p>
							<strong><font size="9" face ="Verdana" >Add Your Pet</font></strong>
						</p>
					</div>
				</div>		
			</div>
	
				<div class="col-md-3 px-sm">
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-4">
		
		</div>
		
		<div class="col-md-4">

							<div class="centerBlock">			
		
			<form:form action="addPet.do" method="GET" modelAttribute="pet">
				<table class="col-5 col-centered table">
					
					<tr>
						<form:label path="name"></form:label>
						<td><form:input path="name" required="required"
								class="form-control" type="text" placeholder="Name"
								id="example-text-input" /> <form:errors path="name" />
					</tr>
					<tr>
						<form:label path="petType.id"></form:label>
						<td><select class="custom-select" name="petType.id"
							style="width: 150px;">
								<option value=1>Dog</option>
								<option value=2>Cat</option>
								<option value=3>Bird</option>
								<option value=4>Fish</option>
						</select> <form:errors path="petType.id" /></td>
					</tr>
					<tr>
						<form:label path="breed"></form:label>
						<td><form:input path="breed" class="form-control" type="text"
								placeholder="Breed" id="example-text-input" required="required" />
							<form:errors path="breed" /></td>
					</tr>
					<tr>
						<form:label path="description"></form:label>
						<td><form:input path="description" required="required"
								class="form-control" type="text"
								placeholder="Description of Pet" id="example-text-input" /> <form:errors
								path="description" /></td>
					</tr>
					<tr>
						<form:label path="specialNeeds"></form:label>
						<td><form:input path="specialNeeds" required="required"
								class="form-control" type="text" placeholder="Any Special Needs"
								id="example-text-input" /> <form:errors path="specialNeeds" /></td>
					</tr>
					<tr>
						<td>
							<div align="center" class="input-group-append">
								<input type="hidden" name="userId" value="${sessionUser.id }">
								<input class="btn btn-secondary" type="submit"
									value="Register Pet to Account" />
							</div>
						</td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</div>
	

<%@include file="/WEB-INF/footer.jsp"%>

</body>
</html>