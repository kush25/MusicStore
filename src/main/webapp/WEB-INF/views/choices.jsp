<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Selections</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="/css/styles.css"> 
<link rel="stylesheet" href="/css/view.css">

<style type="text/css">


	a{
	
		color:white;
	}
	
	a:hover{
	
		color:white;
		}
		
		
	#btn{
		margin-left:290px;
		margin-top:70px;
	}
	
	h2{
	
	margin-top:50px;
	text-align:center;
	}

</style>
</head>
<body>


<nav class="navbar navbar-expand-sm navbar-light bg-dark">
		<a id="a1" class="navbar-brand" href="/">E-music Store</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a id="a2" class="nav-link"
					href="/">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a id="a3" class="nav-link" href="/product">Products</a>
				</li>
				<li class="nav-item"><a id="a4" class="nav-link" href="/about">About</a>
				</li>

				<li class="nav-item"><a id="a5" class="nav-link" href="">Welcome <%= session.getAttribute("name")%> </a>
				</li>
				
				    <li class="nav-item">
              <a id="a6" class="nav-link" href="/signout">Logout</a>
            </li>

		
			</ul>
		</div>
	</nav>


<h2>Welcome:  <%= session.getAttribute("name")%></h2>

<button id="btn" type="button" class="btn btn-primary"><a href="/productlist"> Products</a></button>
<button id="btn" type="button" class="btn btn-primary"><a href="/userdts">Edit User Details</a></button>
<button id="btn" type="button" class="btn btn-primary"><a href="/billdts"> Edit User Billing Details</a></button>
</body>
</html>