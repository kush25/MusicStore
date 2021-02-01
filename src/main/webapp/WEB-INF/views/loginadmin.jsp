<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     
     <link rel="stylesheet" href="/css/styles.css"> 
     
        <link rel="stylesheet" href="/css/login.css"> 
     
<title>AdminLogin</title>
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
              <a id="a2" class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a id="a3" class="nav-link" href="/product">Products</a>
            </li>
            <li class="nav-item">
              <a id="a4" class="nav-link" href="/about">About</a>
            </li>
            
            <li class="nav-item">
              <a id="a5" class="nav-link" href="/login">Login</a>
            </li>
            
            <li class="nav-item">
              <a id="a6" class="nav-link" href="/add">Register</a>
            </li>
       
          </ul>
        </div> 
      </nav>
  
      
<div>

<c:if test="${not empty error}">
  <p  id="errordiv"> Error: ${error} </p>
</c:if>

</div>

<div  id="logindiv" class="container">

<form method="post">
		 UserName:<input type="text" name="username" class="form-control"><br/> <br/>
		Password: <input type="password" name="password" class="form-control"><br/> <br/>
		
		<button type="submit" class="btn btn-primary">Submit</button>
		
		
		</div>
</form>
</body>
</html>