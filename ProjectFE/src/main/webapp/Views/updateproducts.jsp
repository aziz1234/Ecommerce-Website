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
<title>Update Product</title>
</head>
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
        		<a href="${pageContext.request.contextPath}/updateproducts" class="list-group-item list-group-item-action active ">Update product</a>
        		<a href="${pageContext.request.contextPath}/delete" class="list-group-item list-group-item-action ">Delete Product</a>
        	</div>
         </div>        	
      
    <hr>
    <br>
    <br>
<div class="col-9">
<form id="update product form" action="${pageContext.request.contextPath}/updateproducts" method="post" role="form" style="display: block;">
  <div class="form-group row">
    <label for="product Id" class="col-sm-2 col-form-label">Id</label>
    <div class="col-sm-10">
    	<input type="text" name="productId" class="form-control" id="productid" placeholder="Enter the product Id you want to update">
    </div>
  </div>  
  <div class="form-group row">  
    <label for="product name" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="text" name="productName" class="form-control" id="productname" placeholder="Enter product name">
    </div>
  </div>
  <div class="form-group row">
    <label for="category name" class="col-sm-2 col-form-label">Category</label>
    <div class="col-sm-10">
      <input type="text" name="category" class="form-control" id="categoryname" placeholder="Enter category type">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-5">
      <label for="Unit price" class="col-sm-2 col-form-label">Price</label>
      <input type="number" name="unitPrice" class="form-control" placeholder="Enter unit price">
    </div>
    <div class="col-sm-5">
      <label for="product qty" class="col-sm-2 col-form-label">Quantity</label>
      <input type="number" name="productQty" class="form-control" placeholder="Enter Qty ">
    </div>
  </div>
  <div class="form-group row">
    <label for="Product description">Description</label>
    <input type="text" name="productDescription" class="form-control" id="productdescription" placeholder="Enter product description">
  </div>
  <button type="submit" class="btn btn-primary">Update</button>
 </form> 
 </div>  
</div>
</div>
</body>
</html>