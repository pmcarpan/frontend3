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
  
  <body class="bg-light">
    <%@ include file="jumbotron.jsp" %> 
  
    <%@ include file="navbar.jsp" %> 
    
    <div class="h2 text-center">Invoice generated for order #${order.id}</div>
    
    <div class="container">
      <strong>Timestamp: </strong>${order.date} <br>
      <strong>Order Id: </strong>${order.id} <br>
      <strong>Order Total: </strong>${order.cart.totPrice} <br>
    </div>
    
    <br>
    
    <div class="container">
      <table class="table table-sm">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${order.cart.products}" var="product">
            <tr>
              <td class="align-middle">${product.id}</td> 
              <td class="align-middle">${product.name}</td>
              <td class="align-middle">${product.price}</td>
            </tr>
            <tr>
              <td class="align-middle"><small>sold by</small></td> 
              <td class="align-middle"><small>#${product.seller.id}/${product.seller.name}</small></td>
              <td></td>
            </tr>
            <tr>
              <td class="align-middle"><small>category</small></td> 
              <td class="align-middle"><small>#${product.category.id}/${product.category.name}</small></td>
              <td></td>
            </tr>
          </c:forEach>
          <tr>
            <td></td>
            <td class="font-weight-bold align-middle">Total</td>
            <td class="font-weight-bold align-middle">${order.cart.totPrice}</td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <br>
    
    <div class="container">
      <strong>Billing Address: </strong>${order.billingAddress} <br>
      <strong>Delivery Address: </strong>${order.deliveryAddress} <br>
      Payment by card number(last 4 digits) ${order.cardNumber} <br>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
