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
    <%-- <c:set var="userLoggedIn" scope="session" value="${!true}" /> --%>
    <%-- <c:set var="adminLoggedIn" scope="session" value="${!true}" /> --%>
  
    <%@ include file="jumbotron.jsp" %> 
  
    <%@ include file="navbar.jsp" %> 
    
    <div class="container">
      <c:choose>
        <c:when test="${empty productList}">
          <h2>Product List is empty</h2>
        </c:when>
        <c:otherwise>
        
          <h2>List of Products</h2>
          <br>
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">Product Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price</th>
                    <th scope="col">Description</th>
                    <th scope="col">Seller</th>
                    <th scope="col">Category</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${productList}" var="product">
                    <tr>
                      <td class="align-middle">${product.id}</td> 
                      <td class="align-middle">${product.name}</td>
                      <td class="align-middle">${product.price}</td>
                      <td class="align-middle">${product.description}</td>
                      <td class="align-middle">${product.seller.name}</td>
                      <td class="align-middle">${product.category.name}</td>
                      <td class="align-middle">
                        <a class="btn btn-primary" 
                           href="${pageContext.request.contextPath}/product/view/${product.id}">View</a>
                        /
                        <a class="btn btn-warning" 
                           href="${pageContext.request.contextPath}/cart/add/${product.id}">Add to Cart</a>
                      </td>
                    </tr>
                  </c:forEach>
                <tr>
              </tbody>
            </table>
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </body>
</html>