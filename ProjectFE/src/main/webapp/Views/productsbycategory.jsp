<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sort by Category</title>
     <!-- Fontawesome  -->
        <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/font-awesome.min.css">
        
        <!-- Animate CSS -->
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/animate.css">
        
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/style.css">
        
       <!-- BX slider CSS -->
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/jquery.bxslider.css">
        
        <!-- responsive css -->
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/responsive.css"> 
         

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
        <a class="navbar-brand" href="${pageContext.request.contextPath}/newhomepage">Loot</a>
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
                 <a class="dropdown-item" href="${pageContext.request.contextPath}/productsbycategory?category=Electronics">Electronics</a>
                <a class="dropdown-item" href="${pageContext.request.contextPath}/productsbycategory?category=Books">Books</a>
                <a class="dropdown-item" href="#">Catagory 3</a>
             </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/newhomepage">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <security:authorize access="hasAnyRole('ROLE_USER')">
            <li class="nav-item">
               <a class="nav-link" href="${pageContext.request.contextPath}/showcart">Cart</a>
            </li>
            </security:authorize>
            <security:authorize access="hasAnyRole('ROLE_ADMIN')">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/manageproducts">Manage Products</a>
            </li>
            </security:authorize>
            
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/logout">Sign Out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
     
          <section id="ABOUT">       
            <div class="container">            
                <div class="row">                
                    <div class="col-md-10 col-md-offset-1">
                   
                        <!-- About us Title & Description -->
                        <div class="section-title">                        
                            <h2 style="padding-left: 145px;"> <c:out value="${Category}" /> </h2>					                        
                        </div>                    
                    </div>                
                </div>            
            </div>      
       </section>
      
<div class="container" style="padding-bottom: 100px;">    
<div class="col-lg">
<div class="row">
</div>
<div class="row">
          <c:forEach items="${products}" var="products">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg" alt="Card image cap" height="200px" width="80px">
                <div class="card-body">
                  <p class="card-text"><h5> <c:out value="${products.productName}" /></h5></p>
                  <h5>&#x20b9; <c:out value="${products.unitPrice}" /></h5>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <a href="${pageContext.request.contextPath}/viewproduct?productId=${products.productId}" class="btn btn-sm btn-outline-primary">More</a>
                      <a href="${pageContext.request.contextPath}/addcartitem?productId=${products.productId}&category=${products.category}&unitPrice=${products.unitPrice}&productName=${products.productName}" class="btn btn-sm btn-outline-success">Add to Cart</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
</div>            
</div>
</div>
<footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Loot 2019</p>
      </div>
      <!-- /.container -->
    </footer>
</body>
</html>