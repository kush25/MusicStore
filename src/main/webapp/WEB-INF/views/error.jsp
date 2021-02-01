<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/login.css"> 
</head>
<body>


<c:if test="${not empty error}">
  <p  id="errordiv"> Error: ${error} </p>
</c:if>

<button type="button" class="btn btn-danger"><a href="/"> Try Again</a></button>
</body>
</html>