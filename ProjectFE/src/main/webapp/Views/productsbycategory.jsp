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
                 <a class="dropdown-item active" href="${pageContext.request.contextPath}/productsbycategory?category=smart watch">Catagory 1</a>
                <a class="dropdown-item" href="#">Catagory 2</a>
                <a class="dropdown-item" href="#">Catagory 3</a>
             </div>
            </li>
            <li class="nav-item">
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
<div class="container">    
<div class="col-lg">
<div class="row">
<h2></h2>
</div>
<div class="row">
<c:forEach items="${products}" var="products">
           <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#"><c:out value="${products.productName}" /></a>
                  </h4>
                  <h5>&#x20b9; <c:out value="${products.unitPrice}" /></h5>
                  <a href="${pageContext.request.contextPath}/viewproduct?productId=${products.productId}" class="btn btn-primary">More</a>
                  <a href="${pageContext.request.contextPath}/addcartitem?productId=${products.productId}" class="btn btn-secondary">Add to Cart</a>
                </div>
              </div>
            </div>
          </c:forEach>
</div>            
</div>
</div>

</body>
</html>