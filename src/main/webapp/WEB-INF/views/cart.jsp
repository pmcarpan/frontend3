<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
          <h2>Items in Cart</h2> <br>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">Id</th>
                  <th scope="col">Name</th>
                  <th scope="col">Price</th>
                  <th scope="col"></th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${cart.products}" var="product">
                  <tr>
                    <td class="align-middle">${product.id}</td> 
                    <td class="align-middle">${product.name}</td>
                    <td class="align-middle">${product.price}</td>
                    <td class="align-middle">
                      <a class="btn btn-danger" 
                         href="${pageContext.request.contextPath}/cart/remove/${product.id}">Remove</a>
                    </td>
                  </tr>
                </c:forEach>
                <tr>
                  <td></td>
                  <td class="align-middle">
                  	<c:if test="${!(empty cart.products)}">
                      <a class="btn btn-warning" 
                         href="${pageContext.request.contextPath}/product/viewAll">Continue Shopping</a>
                    </c:if>
                  </td>
                  <td class="align-middle" colspan="2">
                    <c:if test="${!(empty cart.products)}">
                      <a class="btn btn-success" 
                         href="${pageContext.request.contextPath}/cart/checkout/">Check Out</a>
                    </c:if>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </c:otherwise>
      </c:choose>
      
      <hr>
      
      <c:choose>
        <c:when test="${empty orders}"><h2>No Previous Transactions</h2></c:when>
        <c:otherwise>
        
          <button class="btn btn-primary btn-lg" type="button" data-toggle="collapse" 
                  data-target="#ordersDisplay" aria-expanded="false" aria-controls="ordersDisplay">
            Previous Orders
          </button>
          
          <div class="collapse" id="ordersDisplay">
            <br>
            <div class="table-responsive">
              <table class="table table-striped table-sm">
                <thead>
                  <tr>
                    <th scope="col">Order Id</th>
                    <th scope="col">Status</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${orders}" var="order">
                    <tr>
                      <td>${order.id}</td> 
                      <td>${order.status}</td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
            
          </div>
        </c:otherwise>
      </c:choose>
    
<%--       <c:if test="${!(empty cart.products)}"> --%>
<!--         <a class="btn btn-success"  -->
<%--            href="${pageContext.request.contextPath}/cart/checkout/">Check Out</a> --%>
<%--       </c:if> --%>
       
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
