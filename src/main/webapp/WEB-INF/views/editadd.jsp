<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Billing Details</title>


	<style>
			
			h2{
			margin-top:40px;
			}
	</style>
</head>
<body>

	<div align="center">
		<h2>Edit Billing Details</h2>

		<form:form method="post" modelAttribute="updadd">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td>${updadd.bId}<form:hidden path="bId" />
					</td>
				</tr>


				<tr>
					<td>Address:</td>
					<td><form:input path="custAddress" /></td>

				</tr>

				<tr>
					<td>City</td>
					<td><form:input path="custCity" /></td>
				</tr>

				<tr>
					<td>State</td>
					<td><form:input path="custState" /></td>
				</tr>
				
					<tr>
					<td>Country</td>
					<td><form:input path="custCountry" /></td>
				</tr>
				
				
					<tr>
					<td>Zip Code:</td>
					<td><form:input path="custZip" /></td>
				</tr>
				

				<tr>
					<td colspan="2"><input type="submit" class="btn btn-secondary" value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>


</body>
</html>
