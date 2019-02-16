<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "utf-8">
<meta name = "viewport" content= "width = device-width, initial scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
<script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script> 
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/resources/js/login.js"></script>
<link rel ="stylesheet" href="<%= request.getContextPath() %>/resources/css/login.css">
</head>
<body>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
  </li>
</ul>
</body>
</html>