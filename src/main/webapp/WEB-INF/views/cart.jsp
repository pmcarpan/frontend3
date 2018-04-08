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
      <c:choose>
        <c:when test="${empty cart.products}"><h2>Cart is Empty</h2></c:when>
        <c:otherwise>
          <h2>Items in Cart</h2>
          <c:forEach items="${cart.products}" var="product">
            ${product.id} - 
            ${product.name} - 
            ${product.price} - 
            ${product.description}  <br>
          </c:forEach>
        </c:otherwise>
      </c:choose>
      
      <hr>
      
      <c:choose>
        <c:when test="${empty orders}"><h2>No Orders have been placed</h2></c:when>
        <c:otherwise>
           <h2>Orders Placed</h2>
          <c:forEach items="${orders}" var="order">
            ${order.id} - 
            ${order.status} <br>
          </c:forEach>
        </c:otherwise>
      </c:choose>
    
      <hr>
      
      <a class="btn btn-primary" 
       href="${pageContext.request.contextPath}/cart/checkout/">Check Out</a>
       
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
