<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
   <a href="${pageContext.request.contextPath}/registration"> Click here for registration</a>
   <a href="${pageContext.request.contextPath}/newhomepage"> Click here for home page</a>
   <a href="${pageContext.request.contextPath}/manageproducts"> Click here to manage products</a>
   <a href="${pageContext.request.contextPath}/listproducts"> Click here to list products</a>
   <a href="${pageContext.request.contextPath}/delete"> Click here to delete products</a>
   <a href="${pageContext.request.contextPath}/updateproducts"> Click here to update products</a>
   <a href="${pageContext.request.contextPath}/productsbycategory?category=smart watch"> Click here to list all smart watches</a>
</body>
</html>