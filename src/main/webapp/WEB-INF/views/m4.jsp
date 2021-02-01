
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>M4</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<style>
	#imgm1{
	
		float:left;
		width:290px;
		height:250px;
		margin-left:30px;
		padding:30px;
	}
	
	h2{
		margin-top:50px;
		text-align:center;
	}

	h6{
	margin-top:30px;
	text-align:center;
	}
	
	table{
		text-align:center;
		margin-top:60px;

	
	}
	
	
	
	#dta{
		margin-left:70px;
	
	}
	
	#back{
	
		margin-top:39px;
		margin-left:50px;
	}
	
	
	#save{
	
		margin-top:40px;
		margin-left:50px;
	}
	
	a{
	color:white;
	}
	
	
	#desc{
		margin-right:860px;
		margin-top:30px;
	
	}
	
		#hd1{
		text-align:center;
		margin-top:20px;
	}
	
</style>
</head>
<body>

<div class="container">
<h2>Product Detail</h2>
<h5 id="hd1">Here is the detailed information for your song.</h5>
</div>
<img id="imgm1" src="/images/m4.jpg">


<form method="post" modelAttribute="prods">
<table>

				<tr class="header">
					<th id="dta">Name</th>
					<th id="dta">Category</th>
					<th id="dta">Condition</th>
					<th id="dta">Price</th>
						</tr>
				
		

				<tr>
			
		<td id="dta">${prods.pname}</td>
		<td id="dta">${prods.pcategory}</td>
		<td id="dta">${prods.pcondition}</td>
		<td id="dta">${prods.price}</td>
		<td><button id="save" onclick="notify()" type="submit" class="btn btn-success" > <a href="/addcart/${prods.pid}">
		 <span class="glyphicon glyphicon-shopping-cart"></span>Order Now</a></button>
		<button id="back" type="button" class="btn btn-dark"> <a href="/products">Back</a> </button> </td>
		
		</tr>
			
	
	</table>
	
	<h5 id="desc">Description of the Music:Retro Medley collection of superstar singers.</h5>


</form>


		<script src="/js/notify.js"></script>			
				
</body>
</html>