<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

      <h2>Items in Cart</h2> <br>
      
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">Name</th>
              <th scope="col">Price</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${cart.products}" var="product">
              <tr>
                <td class="align-middle">${product.id}</td> 
                <td class="align-middle">${product.name}</td>
                <td class="align-middle">${product.price}</td>
              </tr>
            </c:forEach>
            <tr>
              <td></td>
              <td class="font-weight-bold align-middle">Total</td>
              <td class="font-weight-bold align-middle">${cart.totPrice}</td>
            </tr>
          </tbody>
        </table>
      </div>
      
    </div>
    
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-md-6">
          <div class="card bg-primary">
            <div class="card-header text-light">
              Order Details
            </div>
            <div class="card-body bg-white">
              <form action="${pageContext.request.contextPath}/cart/checkout/placeOrder" method="post">
                <div class="form-group">
                  <label for="billadd">Billing Address</label>
                  <input type="text" class="form-control" name="billingAddress" id="billAdd" placeholder="Example Address" autofocus>
                  <div class="text-danger">
                    <small><form:errors path="orderDetail.billingAddress" /></small>
                  </div>
                </div>
                <div class="form-group">
                  <label for="delAdd">Delivery Address</label>
                  <input type="text" class="form-control" name="deliveryAddress" id="delAdd" placeholder="Example Address">
                  <div class="text-danger">
                    <small><form:errors path="orderDetail.deliveryAddress" /></small>
                  </div>
                </div>
                <hr>
                <div class="form-group">
                  <label for="cName">Name on Card</label>
                  <input type="text" class="form-control" name="cardName" id="cName" placeholder="John Doe">
                  <div class="text-muted"><small>Full name as on card</small></div>
                  <div class="text-danger">
                    <small><form:errors path="orderDetail.cardName" /></small>
                  </div>
                </div>
                <div class="form-group">
                  <label for="cNum">Card Number</label>
                  <input type="text" class="form-control" name="cardNumber" id="cNum" placeholder="0000111100001111">
                  <div class="text-danger">
                    <small><form:errors path="orderDetail.cardNumber" /></small>
                  </div>
                </div>
                <div class="form-group">
                  <label for="sCode">Security Code</label>
                  <input type="password" class="form-control" name="secCode" id="sCode">
                  <div class="text-danger">
                    <small><form:errors path="orderDetail.secCode" /></small>
                  </div>
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
