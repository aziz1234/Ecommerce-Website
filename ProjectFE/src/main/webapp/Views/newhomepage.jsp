<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Home page</title>
       <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Raleway:500italic,600italic,600,700,700italic,300italic,300,400,400italic,800,900' rel='stylesheet' type='text/css'>
        
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,300italic,400italic,600italic,700,900' rel='stylesheet' type='text/css'> 
        
        <!-- favicon -->
        <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/resources/images/favicon.png"> 
         
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

<!--      <link rel ="stylesheet" href="<%= request.getContextPath() %>/resources/css/homepage.css"> -->

    
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
                
             </div>
            </li>
            <li class="nav-item active">
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
              <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/logout">Sign Out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
        <!-- Header -->
    
        <header class="header" id="HOME" style="height: 720px;">
           <div class="header-overlay" style="height: 720px">
            	<div class="container header-container">
                   <div class="row">                  
                        <div class="col-md-12">                       
                            <!-- Logo -->
                            <div class="logo text-center">                           
                               <!-- <img src="images/logo_.png" alt="logo"> -->                            
                            </div>                         
                        </div>                                           
                    </div>                                        
                    <div class="row">                        
                        <div class="col-md-8">                        
                            <div class="header-text">                            
                                <!-- Title & Description -->
                                <h1> Shopping is always cheaper than a psychiatrist</h1>
                                <p> Bulit with love..!</p>                            
                            </div>                            
                                                      
                                    <!-- Header buttons -->                              
                                 <a href="javascript:;" id="scrollToBottom">Take a tour &darr;</a>                                                      
                                                  
                        </div>                        
                        <div class="col-md-3 col-md-offset-1">                        
                            <div class="header-iphone">                                                      
                                <!-- Header iPhone -->                                                            
                            </div>                                                    
                        </div>                                                
                    </div>                                   
                </div>
                            
            </div>           
        </header>
<!-- /header -->

    <!-- Page Content -->
    <div class="container">

     <!--   <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">Shop Name</h1>
          <div class="list-group">
            <a href="#" class="list-group-item">Category 1</a>
            <a href="#" class="list-group-item">Category 2</a>
            <a href="#" class="list-group-item">Category 3</a>
          </div>

        </div> -->
        <!-- /.col-lg-3 -->
        
  <!-- Electronics -->
        <section id="ABOUT">       
            <div class="container">            
                <div class="row">                
                    <div class="col-md-10 col-md-offset-1">
                   
                        <!-- About us Title & Description -->
                        <div class="section-title">                        
                            <h2 style="padding-left: 145px;"> Electronics </h2>					                        
                        </div>                    
                    </div>                
                </div>            
            </div>      
       </section>
       
  <div class="col-lg">

     <div class="row">   
        <c:forEach items="${products}" var="products" begin="10" end="17">
        <c:if test="${products.category=='Electronics'}">
           <div class="col-lg-4 col-md-6 mb-4" >
              <div class="card h-100">
                <a href="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg"><img height="225" width="150" class="card-img-top" src="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg" alt=""></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="${pageContext.request.contextPath}/viewproduct?productId=${products.productId}"><c:out value="${products.productName}" /></a>
                  </h5>
                  <h5>&#x20b9; <c:out value="${products.unitPrice}" /></h5>
                </div>
                <div class="card-footer">
                  <small class="text-muted"><c:out value="In ${products.category}" /></small>
                </div>
              </div>
            </div>
           </c:if>
          </c:forEach>  
          </div>
          <!-- /.row -->
          
          <!-- Books -->
        <section id="ABOUT">       
            <div class="container">            
                <div class="row">                
                    <div class="col-md-10 col-md-offset-1">
                   
                        <!-- About us Title & Description -->
                        <div class="section-title">                        
                            <h2 style="padding-left: 145px;"> Books </h2>					                        
                        </div>                    
                    </div>                
                </div>            
            </div>      
       </section>
          
      <div class="row">     
        <c:forEach items="${products}" var="products" begin="1" end="7">
        <c:if test="${products.category=='Books'}">
           <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg"><img height="225" width="150" class="card-img-top" src="${pageContext.request.contextPath}/resources/images/${products.productId}.jpg" alt=""></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="${pageContext.request.contextPath}/viewproduct?productId=${products.productId}"><c:out value="${products.productName}" /></a>
                  </h5>
                  <h5>&#x20b9; <c:out value="${products.unitPrice}" /></h5>
                </div>
                <div class="card-footer">
                  <small class="text-muted"><c:out value="In ${products.category}" /></small>
                </div>
              </div>
            </div>
           </c:if>
          </c:forEach>  
          </div>
          <!-- /.row -->
          

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

  
    <!-- /.container  -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/jquery/jquery.slim.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/jquery/jquery.min.js"></script>
    <script type = "text/javascript">
        $(function () {
            $('#scrollToBottom').bind("click", function () {
                $('html, body').animate({ scrollTop: $(document).height()-500 }, 720);
                return false;
            });
            $('#scrollToTop').bind("click", function () {
                $('html, body').animate({ scrollTop: 0 }, 720);
                return false;
            });
        });
    </script>
    

  </body>

</html>
