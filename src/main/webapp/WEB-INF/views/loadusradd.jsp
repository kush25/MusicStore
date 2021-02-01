<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users Billing Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<style>
		table{
		margin-left:270px;
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
		}
		
		#btn1{
			margin-top:20px;
			margin-left:190px;
			padding:10px;
		}
		
		h4{
		text-align:center;
		margin-top:50px;
		}

</style>
</head>
<body>

<h4>Customers Billing Details</h4>
<table border="1">
				<tr>
					<th>ID </th>
					<th>Customers Full Address</th>
					<th> City</th>
					<th>State</th>
					<th>Country</th>
					<th>Zip</th>
					<th>Update Billing Details</th>
					<th>Delete Billing Details</th>
				
			
				</tr>
				
		<c:forEach items="${add}" var="usrs">

				<tr>
				<td>${usrs.bId}</td>
				
				<td>${usrs.custAddress}</td>
				<td>${usrs.custCity}</td>
				<td>${usrs.custState}</td>
				<td>${usrs.custCountry}</td>
				<td>${usrs.custZip}</td>
				
	
	 	<td>  <a class="btn btn-success" role="button" href="/addedit/${usrs.bId}">Updates</a> </td>
		
	 	<td>  <a class="btn btn-danger" role="button" href="/deladd/${usrs.bId}">Delete</a> </td> 
		
			</tr>
			
			</c:forEach>
			
			</table>
	

</body>
</html>