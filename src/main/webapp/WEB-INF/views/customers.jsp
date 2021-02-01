<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers Data</title>

<style>
		table{
		margin-left:350px;
		margin-top:40px;
		
		}
		
		th{
		text-align:center;
		padding:10px;
		}
		
		td{
		padding:10px;
		
		}
		
		h1{
		
		text-align:center;
		color:dark-gery;
		margin-top:20px;
		margin-left:60px;
		}
		
		#btn1{
			margin-top:20px;
			margin-left:190px;
			padding:10px;
		}

</style>
</head>
<body>


<h1>Customers Details</h1>


<table border="1">
				<tr>
					<th>ID</th>
					<th>User's Full Name</th>
					<th>Email</th>
					<th>Unique username</th>
					<th>Edit Customer Details</th>
					<th>Delete Customer</th>
				
			
				</tr>
				
		<c:forEach items="${cust}" var="usrs">

				<tr>
				<td>${usrs.id}</td>
				<td>${usrs.uName}</td>
				<td>${usrs.email}</td>
				<td>${usrs.username}</td>
				
	
	 	<td>  <a class="btn btn-success" role="button" href="/usredit/${usrs.id}">Updates</a> </td>
		
		 <td>  <a class="btn btn-danger" role="button" href="/delusr/${usrs.id}">Delete</a> </td> 
		
			</tr>
	
		 

			
	
			
		</c:forEach>
	
	</table>	
		
<!-- a id="btn1" type="button" class="btn btn-primary" href="addfeeds">Submit another Task</a> -->

</body>
</html>