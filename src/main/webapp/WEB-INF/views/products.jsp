<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Products</title>
  <link rel="stylesheet" href="/css/styles.css"> 
<link rel="stylesheet" href="/css/view.css">
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
  
  
  
  
			


<div id="div1">
		<h1>All Products</h1>
		<h5>Checkout all the awesome music collection now !!!</h5>

	</div>



      


<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Music">

<table id="myTable">

				<tr class="header">
					<th>Image</th>
					<th>Name</th>
					<th>Category</th>
					<th>Condition</th>
					<th>Price</th>
					<th>  </th>
				</tr>
				
		<c:forEach items="${pd}" var="prods">

				<tr>
				<td><img src='${prods.pimage}' widht='150px' height='160px' /></td>
		<td>${prods.pname}</td>
		<td>${prods.pcategory}</td>
		<td>${prods.pcondition}</td>
		<td>${prods.price}</td>
		<td> <a href=${prods.links}><i class="fa fa-info-circle" style="font-size:18px;color:blue"></a></i></td>
	
		
		</tr>
			
	
			
		</c:forEach>
	
	</table>	
		


<script src="/js/scripts.js"></script>
</body>
</html>