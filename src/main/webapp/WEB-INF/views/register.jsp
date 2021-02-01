<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="/css/register.css">
</head>
<body>


<div >
  <div id="formdiv" class="container">
<h3>Registration Customer</h3>
<p> Please fill in your information below: </p>

	<form method="post">
	
		User Full Name:<input type="text" name="uName" class="form-control"> <br/> <br/>
		User Email: <input type="email" name="email"  class="form-control"><br/> <br/>
		Unique UserName:<input type="text" name="username" class="form-control"><br/> <br/>
		Password: <input type="password" name="password" class="form-control"><br/> <br/>
		<br/> <br/>
		
		<h2> Billing Details</h2>
		
		Address: <input type="text" name="custAddress" class="form-control"> <br/> <br/>
		City: <input type="text" name="custCity" class="form-control">  <br/> <br/>
		State: <input type="text" name="custState" class="form-control">   <br/> <br/>
		Country: <input type="text" name="custCountry" class="form-control">  <br/> <br/>
		Zip: <input type="number" name="custZip" class="form-control">  <br/> <br/>
		  <br/>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>

</div>
</body>
</html>