<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="/css/register.css">
</head>
<body>


<div >
  <div id="formdiv" class="container">
<h3>Add Product</h3>
<p> Please fill in the information below: </p>

	<form method="post">
	
		
		Music Image:<input type="text" name="pimage" class="form-control"> <br/> <br/>
		Music Name:<input type="text" name="pname" class="form-control"> <br/> <br/>
		Music Category: <input type="text" name="pcategory"  class="form-control"><br/> <br/>
		Music Condition:<input type="text" name="pcondition" class="form-control"><br/> <br/>
		Price: <input type="number" name="price" class="form-control"><br/> <br/>
		Links: <input type="text" name="links" class="form-control"><br/> <br/>
		
		
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>

</div>



</body>
</html>