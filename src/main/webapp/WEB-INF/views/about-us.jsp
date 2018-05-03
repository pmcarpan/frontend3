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
      <h1 class="display-3">Sustainability</h1>
      <p>We put our scale and inventive culture to work on sustainability and protecting the environment.</p>
      
      <h1 class="display-3">Supporting small businesses</h1>
      <p>We empower small and medium-sized businesses to reach millions of customers.</p>
      
      <h1 class="display-3">Job creation and investment</h1>
      <p>We have created many jobs and have invested in many countries.</p>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
