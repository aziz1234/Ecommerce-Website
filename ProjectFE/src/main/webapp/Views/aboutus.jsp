<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>


<html>


    <head>
    
        <title> About Us </title>
        
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
    <link rel ="stylesheet" href="<%= request.getContextPath() %>/resources/css/homepage.css">
</head>
</body>
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
             <li class="nav-item active">
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
    
<section id="ABOUT">
        
            <div class="container">
            
                <div class="row">
                
                    <div class="col-md-10 col-md-offset-1">
                    
                        <!-- About us Title & Description -->
                        <div class="section-title">
                        
                            <h2> About Us </h2>
                            <p> For some, shopping is an art; for others, it's a sport. It can be a vice and it can be a cause. Some love it. Some hate it. Rarely is someone indifferent.</p>
                            <p>And we do it better</p>
							
                        
                        </div>
                    
                    
                    
                    </div>
                
                </div>
            
            
            </div>
        
            <div class="choose-us-wraper">
            
                <div class="container">
                
                    <div class="row">
                    
                        <div class="col-md-6">
                        
                            <!-- About iphone -->
                            <div class="about-iphone wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                            
                                <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about-iphone.jpg" alt="iphone">
                            
                            </div>
                        
                        </div>
                        
                        <div class="col-md-6 wow fadeInRight" data-wow-duration="1s" data-wow-delay=".5s">
                        
                            <!-- Why choose us title -->
                            <div class="choose-us-title">
                            
                            
                                <h2> Why Choose Us?</h2>
                                <p>Convenience, Better Prices, Easy Price Comparisons, More variety, Easy return.</p>
                            
                            </div>
                            
                            <!-- why choose us description -->
                            <div class="choose-us-des">
                            
                                <!-- choose us item 1 -->
                                <div class="choose-us-item wow fadeInUp" data-wow-duration=".5s" data-wow-delay="1s">
                                    
                                    <!-- choose us item icon -->
                                    <div><i class="fa fa-bolt"></i></div>
                                    
                                    <!-- choose us item title & des -->
                                    <h3>Quick delivery</h3>
                                    <p>One day & Two day delivery over 100 cities.</p>
                                
                                </div>
                                
                                
                                <!-- choose us item 2 -->
                                <div class="choose-us-item wow fadeInUp" data-wow-duration=".5s" data-wow-delay="1s">
                                    
                                    <!-- choose us item icon -->
                                    <div><i class="fa fa-bullhorn"></i></div>
                                    
                                    <!-- choose us item title & des -->
                                    <h3>Daily Deals</h3>
                                    <p>Daily offers on top brands and many more.</p>
                                
                                </div>
                                
                                
                                 <!-- choose us item 3 -->
                                <div class="choose-us-item wow fadeInUp" data-wow-duration=".5s" data-wow-delay="1s">
                                    
                                    <!-- choose us item icon -->
                                    <div><i class="fa fa-flag-o"></i></div>
                                    
                                    <!-- choose us item title & des -->
                                    <h3>  Return & Replacement</h3>
                                    <p>Guaranteed  return and replacement for product in 10 days.</p>
                                
                                </div>
                                
                                
                            
                            </div>
                            
                            
                            
                        
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

    