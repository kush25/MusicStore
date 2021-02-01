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
<title>Delete Products</title>

		<style>
			form
			{
				margin-top:20px;
				padding:30px;
			}
				
			
			
			tr,td{
			text-align:center;
			}
		
		</style>
</head>
<body>


	<form:form  modelAttribute="delprd">
		<table>
		<tr>
					<h5>Product Id to be Deleted is:</h5>
					<td>${delprd.cid}<form:hidden path="cid" />
					</td>
					
					<h5> And Product Name is:</h5>
					<td>${delprd.musicnames}<form:hidden path="cid" />
					</td>
					
				</tr>
				
				</table>
		
		<br/> <br/> <br/>
		<div>
			<input onclick="myFunction()" type="submit" class="btn btn-primary" value="Delete Product" />
			
			<script>
			function myFunction(){
				alert("Product Deleted")
				}
			</script>

		</div>


	</form:form>

		
</body>
</html>