<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Customers</title>

		<style>
			form
			{
				margin-top:20px;
				padding:30px;
			}
				
		
		</style>
</head>
<body>


	<form:form modelAttribute="delusr">
		
		<tr>
					<h5>Customer ID to be Deleted is:</h5>
					<td>${delusr.id}<form:hidden path="id" />
					</td>
					<br/><br/>
					<h5> And Customers username is:</h5>
					<td>${delusr.username}<form:hidden path="id" />
					</td>
				</tr>
		
		<br/> <br/> <br/>
		<div>
			<input onclick="myFunction()" type="submit" class="btn btn-primary" value="Delete Customer" />
			
			<script>
			function myFunction(){
				alert("Customer Deleted")
				}
			</script>

		</div>


	</form:form>

		
</body>
</html>