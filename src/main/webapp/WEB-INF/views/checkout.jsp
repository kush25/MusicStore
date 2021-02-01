<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/flatly/bootstrap.min.css"
	integrity="sha384-qF/QmIAj5ZaYFAeQcrQ6bfVMAh4zZlrGwTPY7T/M+iTTLJqJBJjwwnsE5Y0mV7QK"
	crossorigin="anonymous">
<title>Checkout Page</title>


<style>

	body{
	background-color: lightgrey;
}
	

	#chk1{
	
		text-align:center;
		margin-top:50px;
	
	}
	
	#chk2{
	
		text-align:center;
		margin-top:30px;
	
	}
	
	#tbl1{
	
		padding:50px;
		margin-top:40px;
		}
		
		
	#ct1{
	
		margin-top:30px;
	
	}	
	
	#btn{
		margin-bottom:40px;
		margin-right:530px;
		margin-top:40px;
	
	}
	
	
	#btn1{
		margin-bottom:40px;
		margin-left:330px;
		margin-top:37px;
	
	}
	
	#cd{
		
		
		background-color:lightblue;
	
	}


</style>
</head>

<body>


	<!-- Product Table Header -->
	<div class="contanier">
		<h4 id="chk1">Checkout</h4>
		<h4 id="chk2">Order Confirmation</h4>
	</div>


<div>
<h4>Your User Name: <%= session.getAttribute("name") %> </h4>



</div>

	<div id="cd" class="card">
	
		<div id="ct1" class="row">
			<div class="container border">
				<table id="tbl1" class="table table-hover">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cart}" var="prod">
							<tr>
								<td>${prod.cid}</td>
								<td>${prod.musicnames}</td>
								<td>${prod.category}</td>
								<td><fmt:setLocale value="en_US" /> <fmt:formatNumber
										value="${prod.price}" type="currency" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-right">
					<p class="mx-3">

						<span> Total: <fmt:setLocale value="en_US" /> <fmt:formatNumber
								value="${total}" type="currency" />
						</span>
					</p>
				</div>
			</div>
		</div>
		
		
		
		<div  class="row">
			<div id="btn1" class="col">
			<a href="/cart"><button type="button"
						class="btn btn-primary">Back To Cart</button></a>
			</div>
			
			
			<div id="btn" class="col">
				<a href="/completed"><button type="button"
						class="btn btn-primary float-right">
						Confirm
						<fmt:setLocale value="en_US" />
						<fmt:formatNumber value="${total}" type="currency" />
					</button></a>
			</div>
			</div>
</div>







</body>

</html>