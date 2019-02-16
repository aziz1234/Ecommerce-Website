<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sort by Category</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
    
     <!-- Custom styles for this template -->
    <link rel ="stylesheet" href="<%= request.getContextPath() %>/resources/css/homepage.css">
    
    <!-- Bootstrap core JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/jquery/jquery.slim.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
  </head>
<body>
     <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Website Name</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               Shop by Catagories
              </a>
             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <a class="dropdown-item" href="${pageContext.request.contextPath}/productsbycategory?category=smart watch">Catagory 1</a>
                <a class="dropdown-item" href="#">Catagory 2</a>
                <a class="dropdown-item" href="#">Catagory 3</a>
             </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/newhomepage">Home
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
    
<div class="container">
   <div class="row">
    <div class="col">
      <img src="http://placehold.it/700x900" alt="product image" class="img-thumbnail">
    </div>
    <div class="col-8">    
      <div class="row">
      <h4><c:out value="${products.productName}" /></h4>
      </div>
      <div class="row">
      <p><c:out value="${products.productDescription}" /></p>
      </div>
      <div class="row">
      <a href="#" class="btn btn-primary">Buy Now</a>
      </div>
    </div>
 </div>   
 </div>
 
</body>
</html>