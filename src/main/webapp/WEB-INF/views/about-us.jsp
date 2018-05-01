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
      <h2>About Us!</h2>
      <p>${pageContext.request.localAddr}</p>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
