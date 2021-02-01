<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Music Store</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="/css/styles.css"> 
     
     <style>
     	#crd{
     		float:right;
     		margin-top:-370px;
     		margin-right:40px;
     		margin-bottom:30px;
     	
     
     	}
     	
     	
     	#crd1{
     		margin-top:60px;
     	
     	}
     	
     	#crd2{
     		
     		height:250px;
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
            
             <li class="nav-item">
              <a id="a6" class="nav-link" href="/loginadmin">Admin</a>
            </li>
          </ul>
        </div> 
      </nav>
  
      
      
	
        <div id="musics" class="carousel slide" data-ride="carousel">
      
          <!-- Indicators -->
          <ul class="carousel-indicators">
            <li data-target="#musics" data-slide-to="0" class="active"></li>
            <li data-target="#musics" data-slide-to="1"></li>
            <li data-target="#musics" data-slide-to="2"></li>
          </ul>
          
          <!-- The slideshow -->
          <div class="carousel-inner" id="crslimg">
            <div class="carousel-item active">
              <img  id="ms5" src="/images/music_5.jpg" alt="m1">
            </div>
            <div id="images" class="carousel-item">
              <img id="ms3" src="/images/music_3.jpg" alt="m2">
            </div>
            <div class="carousel-item">
              <img id="ms6" src="/images/music_6.jpg" alt="m3">
            </div>
          </div>
          
          <!-- Left and right controls -->
          <a class="carousel-control-prev" href="#musics" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#musics" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>

	
	<div class="container">
 
  <div id="crd1" class="card" style="width:400px">
    <img class="card-img-top" src="/images/music_7.jpg" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">Piano Special</h4>
      <p class="card-text">Listen to piano tunes and get energetic with it.This is the best piano collections.</p>
    </div>
  </div>

  
	
	<div class="container">
 
  <div id="crd"  class="card" style="width:400px">
    <img id="crd2" class="card-img-top" src="/images/music_8.jpg" alt="Card image">
    <div class="card-body">
      <h4 class="card-title">Retro Mix</h4>
      <p class="card-text">Remember your childhood memories with the best tunes collections.  </p>

    </div>
  </div>
  <br>
  
 </div>
 	

</body>
</html>