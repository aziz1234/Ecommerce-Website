<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset = "utf-8">
<meta name = "viewport" content= "width = device-width, initial scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script> 
<script src="<%= request.getContextPath() %>/resources/jquery/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<title> Delete Product</title>
</head>
<body>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/newhomepage">Website Name</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
             <div class="dropdown show">
              <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Shop by Catagories
              </a>

              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <a class="dropdown-item" href="#">Catagory 1</a>
                <a class="dropdown-item" href="#">Catagory 2</a>
                <a class="dropdown-item" href="#">Catagory 3</a>
              </div>
             </div>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/registration">Login &amp; Signup</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Page contents -->
    
    <br>
    <br>

 <div class="container">   

   <!--  <div class="row">
        <ul class="nav">
  			<li class="nav-item">
    			<a class="nav-link" href="${pageContext.request.contextPath}/manageproducts">Add product</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="${pageContext.request.contextPath}/listproducts">List products</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link" href="${pageContext.request.contextPath}/updateproducts">Update product</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link disabled" href="${pageContext.request.contextPath}/deleteproducts" tabindex="-1" aria-disabled="true">Delete Product</a>
  			</li>
		</ul>
    </div> -->
         
        <div class="row">
          <div class="col-3">
        	<div class="list-group">
        		<a href="${pageContext.request.contextPath}/manageproducts" class="list-group-item list-group-item-action">Add product</a>
        		<a href="${pageContext.request.contextPath}/listproducts" class="list-group-item list-group-item-action ">List product</a>
        		<a href="${pageContext.request.contextPath}/updateproducts" class="list-group-item list-group-item-action ">Update product</a>
        		<a href="${pageContext.request.contextPath}/delete" class="list-group-item list-group-item-action active">Delete Product</a>
        	</div>
         </div>        	
<div class="col-9">      
<form id="delete-form" class="form-horizontal" action="${pageContext.request.contextPath}/deleteproducts">
	<div class="input-group">
    	<input name="productId" placeholder="Delete product with id" class="form-control productId" type="text">
        <span class="input-group-btn">
        	<button type="submit" class="btn btn-primary">Delete</button>                 
        </span>
    </div>
</form>
</div>
</div>
</div>
</body>
</html>