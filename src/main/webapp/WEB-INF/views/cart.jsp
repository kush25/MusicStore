<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/styles.css"> 


<style>

	h4{
	
		text-align:center;
		margin-top:60px;
	}

</style>


</head>
<body>



 <nav class="navbar navbar-expand-sm navbar-light bg-dark">
        <a id="a1" class="navbar-brand" href="/">E-music Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a id="a2" class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
              <a id="a3" class="nav-link" href="/products">Products <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a id="a4" class="nav-link" href="/about">About</a>
            </li>
            
            <li class="nav-item">
             <h6 id="a9">Welcome: <%= session.getAttribute("name")   %></h6>
            </li>
            
            <li class="nav-item">
              <a id="a6" class="nav-link" href="/cart">Cart</a>
            </li>
            
             <li class="nav-item">
              <a id="a6" class="nav-link" href="/signout">Logout</a>
            </li>
            
            
          </ul>
        </div> 
      </nav>
      
      
      <h4>Welcome to your cart</h4>
      <h5>Your items are listed below</h5>
  

  
  
  
  
  
  

	<!-- Product Table -->
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Category</th>
				<th scope="col">Conditions</th>
				<th scope="col">Music Name</th>
				<th scope="col">Price</th>
				<th scope="col"> Delete</th>
				
				
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cart}" var="prod">
				<tr>
					<td>${prod.cid}</td>
					<td>${prod.category}</td>
					<td>${prod.conditions}</td>
					<td>${prod.musicnames}</td>
					<td>${prod.price}</td>
					<td><a class="btn btn-success" role="button" href="/delcrt/${prod.cid}"> Delete</a></td>
				
				</tr>
			</c:forEach>
		</tbody>
	</table>


<span> <a href="/products"><button type="button"
				class="btn btn-success">Add More</button></a>
				
		<%-- 		 <c:if test="${cart.isEmpty() == false}"> --%>
			
			<a href="/checkout"><button type="button" class="btn btn-success">Checkout</button></a>
		


</body>
</html>