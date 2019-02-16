<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script> 

<!--  <link rel="stylesheet"
	href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="//https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script> 
<script type="text/javascript">
$(document).ready( function() {
	
	$.ajax({
		url: 'http://localhost:8080/ProjectFE/listproducts',
		method: 'get',
		datatype: 'json',
		success: function (data){
			$('#myTable').DataTable({
				data: data,
				columns: [
					{'data': 'productId'},
					{'data': 'productName'},
					{'data': 'unitPrice'},
					{'data': 'productDescription'},
					{'data': 'category'},
					{'data': 'productQty'}
				]
			    
			});
		}
	});
});
</script> -->
<title>List of Products</title>
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
<div class="row">
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
         
          <div class="col-3">
        	<div class="list-group">
        		<a href="${pageContext.request.contextPath}/manageproducts" class="list-group-item list-group-item-action">Add product</a>
        		<a href="${pageContext.request.contextPath}/listproducts" class="list-group-item list-group-item-action active">List product</a>
        		<a href="${pageContext.request.contextPath}/updateproducts" class="list-group-item list-group-item-action ">Update product</a>
        		<a href="${pageContext.request.contextPath}/deleteproducts" class="list-group-item list-group-item-action ">Delete Product</a>
        	</div>
         </div>        	
      
    <hr>
    <div class="col-9">
<table id="myTable" class="table table-striped table-bordered">
	<thead>
		<tr>
		    <th>Product ID</th>
			<th>Product Name</th>
			<th>Product Price</th>
			<th>Description</th>
			<th>Category</th>
			<th>Quantity</th>
		</tr>
		</thead>
  <c:forEach items="${products}" var="products">
  <tr>
   <td><c:out value="${products.productId}" /></td>
   <td><c:out value="${products.productName}" /></td>
   <td><c:out value="${products.unitPrice}" /></td>
   <td><c:out value="${products.productDescription}" /></td>
   <td><c:out value="${products.category}" /></td>
   <td><c:out value="${products.productQty}" /></td>
  </tr>
 </c:forEach>
	
	
</table>
</div>
</div>
</div>

</body>
</html>