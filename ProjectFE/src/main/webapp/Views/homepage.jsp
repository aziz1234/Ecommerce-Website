<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
   <a href="${pageContext.request.contextPath}/registration"> Click here for registration</a>
   <a href="${pageContext.request.contextPath}/newhomepage"> Click here for home page</a>
   <security:authorize access="hasAnyRole('ROLE_ADMIN')">
   <a href="${pageContext.request.contextPath}/manageproducts"> Click here to manage products</a>
  </security:authorize>
   <a href="${pageContext.request.contextPath}/showcart"> Click here to view cart</a>
</body>
</html>