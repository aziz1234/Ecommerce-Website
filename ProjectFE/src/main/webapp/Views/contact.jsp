<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<html>
<head>
    
        <title> Contact Us </title>
        
        <meta charset="utf-8">
        
        <meta name="description" content="Simple, clean, responsive website built with html5, CSS3, Js, jQuery and Bootstrap">
        
        <meta name="keywords" content="web, design, html, css, html5, css3, javascript, jquery, bootstrap, development">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Raleway:500italic,600italic,600,700,700italic,300italic,300,400,400italic,800,900' rel='stylesheet' type='text/css'>
        
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,300italic,400italic,600italic,700,900' rel='stylesheet' type='text/css'> 
        
        <!-- favicon -->
        <link rel="icon" type="image/png" href="<%= request.getContextPath() %>/resources/images/favicon.png"> 
         
         <!-- Fontawesome  -->
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        
        <!-- Animate CSS -->
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/animate.css">
        
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/style.css">
        
       <!-- BX slider CSS -->
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/jquery.bxslider.css">
        
        <!-- responsive css -->
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/responsive.css"> 
         
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
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
              <a class="nav-link" href="${pageContext.request.contextPath}/about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="${pageContext.request.contextPath}/contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/logout">Sign Out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

<!-- Contact Us -->
        <section class="contact-us" id="CONTACT">
        
            <div class="container wow bounceIn">
            
                    <div class="row">

                        <div class="col-md-10 col-md-offset-1">
                        
                            <div class="section-title">
                            
                                <h2>Contact Us</h2>
                                <p>In case of any concern, Contact Us</p>
                            </div>
                            
                        </div>


                    </div>
            
            
            </div>
            
            <div class="contact-us-form wow bounceIn">
            
            
                <div class="container">
                
                    <form role="form">
                    
                        <div class="row">
                        
                            <div class="col-md-4">
                            
                                <input type="text" class="form-control" id="name" placeholder="Name">
                                <input type="email" class="form-control" id="email" placeholder="Email">
                                <input type="text" class="form-control" id="subject" placeholder="Subject">
                            
                            </div>
                            
                            <div class="col-md-8">
                            
                                <textarea class="form-control" id="message" rows="25" cols="10" placeholder="Message Text...."></textarea>
                                
                                <button type="button" class="btn btn-default submit-btn form_submit">SEND</button>
                            
                            </div>
                        
                        </div>
                    
                    
                    </form>
                
                
                </div>
            
            
            </div>
            
            <div class="container">
                <div class="row">
                
                    <div class="col-md-12 wow bounceInLeft">
                    
                        <div class="social-icons">
                        
                            <ul>
                            
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                            
                            </ul>
                        
                        
                        </div>
                    
                    
                    </div>
                
                </div>
            
            </div>
            
            
            
        
        </section>
        <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
      </div>
      <!-- /.container -->
    </footer>

<!-- Bootstrap JavaScript -->
        <script src="<%= request.getContextPath() %>/resources/js/jquery.js"></script>
        <script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
        
        <!-- Bx Slider JS -->
        <script src="<%= request.getContextPath() %>/resources/js/jquery.bxslider.min.js"></script>
        
        <!-- Add JS counter lib -->
        <script src="<%= request.getContextPath() %>/resources/js/jquery.waypoints.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/js/jquery.counterup.min.js"></script>
        
        <!-- Add wow js lib -->
        <script src="<%= request.getContextPath() %>/resources/js/wow.min.js"></script>
      
        <!-- Custom Js -->
        <script src="<%= request.getContextPath() %>/resources/js/custom.js"></script>
</body>
</html>