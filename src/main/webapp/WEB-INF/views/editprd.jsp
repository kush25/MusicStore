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
<title>Edit Product Details</title>


	<style>
			
			h2{
			margin-top:40px;
			}
	</style>
</head>
<body>

	<div align="center">
		<h2>Edit Product Details</h2>

		<form:form method="post" modelAttribute="uptprod">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td>${uptprod.pid}<form:hidden path="pid" />
					</td>
				</tr>


				<tr>
					<td>Image Link:</td>
					<td><form:input path="pimage" /></td>

				</tr>

				<tr>
					<td>Music Name:</td>
					<td><form:input path="pname" /></td>
				</tr>

				<tr>
					<td>Music Category:</td>
					<td><form:input path="pcategory" /></td>
				</tr>
				
					<tr>
					<td>Music Condition</td>
					<td><form:input path="pcondition" /></td>
				</tr>
				
				
					<tr>
					<td>Price</td>
					<td><form:input path="price" /></td>
				</tr>
				
				
					<tr>
					<td>Links</td>
					<td><form:input path="links" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" class="btn btn-secondary" value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>


</body>
</html>
