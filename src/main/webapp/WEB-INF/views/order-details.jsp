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
            ${product.description} 
          </c:forEach>
        </c:otherwise>
      </c:choose>
      
    </div>
    
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-6">
          <div class="card bg-primary">
            <div class="card-header text-light">
              Order Details
            </div>
            <div class="card-body bg-white">
              <form action="${pageContext.request.contextPath}/cart/checkout/placeOrder" method="post">
                <div class="form-group">
                  <label for="billadd">Billing Address</label>
                  <input type="text" class="form-control" name="billingAddress" id="billAdd" placeholder="Example Address" required autofocus>
                </div>
                <div class="form-group">
                  <label for="delAdd">Delivery Address</label>
                  <input type="text" class="form-control" name="deliveryAddress" id="delAdd" placeholder="Example Address" required>
                </div>
                <button type="submit" class="btn btn-primary">Place Order</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
