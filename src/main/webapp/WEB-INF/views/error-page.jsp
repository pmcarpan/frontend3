<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <title>Online Store</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="bootstrap-cdn.jsp" %> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css"> 
  </head>
  
  <body>
    <%@ include file="jumbotron.jsp" %> 
  
    <%@ include file="navbar.jsp" %> 
    
    <div class="container">
      <h1>Oops! Something went wrong.</h1>
      <hr>
      <p><strong>${timestamp}</strong> <br> ${msg}</p>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
