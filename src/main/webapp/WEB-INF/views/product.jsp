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
    
      <div class="card bg-primary">
        <div class="card-header text-white">Viewing Product</div>
        
        <div class="card-body bg-light"><div class="container"><div class="row">
          <div class="card border-primary col-12 col-md-4">
            <img src="${pageContext.request.contextPath}/resources/images/products/${product.imageAddress}" 
                 class="max-auto my-auto" style="height:auto; max-width:100%;" alt="Product Image" />
          </div>
          <div class="card border-primary col-12 col-md-7 mx-auto">
            <table class="table my-auto">
              <tbody>
                <tr>
                  <td>Id</td>
                  <td class="align-middle">${product.id}</td> 
                </tr>
                <tr class="table-info">
                  <td>Name</td>
                  <td class="align-middle">${product.name}</td>
                </tr>
                <tr class="table-warning">
                  <td>Price</td>
                  <td class="align-middle">${product.price}</td>
                </tr>
                <tr>
                  <td><small>Description</small></td>
                  <td class="align-middle"><small>${product.description}</small></td>
                </tr>
                <tr class="table-success">
                  <td>Seller Name</td>
                  <td class="align-middle">${product.seller.name}</td>
                </tr>
                <tr>
                  <td><small>Seller Address</small></td>
                  <td class="align-middle"><small>${product.seller.address}</small></td>
                </tr>
                <tr class="table-success">
                  <td>Category</td>
                  <td class="align-middle">${product.category.name}</td>
                </tr>
                <tr>
                  <td><small>Category Description</small></td>
                  <td class="align-middle"><small>${product.category.description}</small></td>
                </tr>
                <tr>
                  <td class="align-middle">
                    <a class="btn btn-warning" 
                       href="${pageContext.request.contextPath}/cart/add/${product.id}">Add to Cart</a>
                  </td>
                  <td></td>
                </tr>
                <tr>
              </tbody>
            </table>
          </div>
        </div></div></div>
      </div>

    </div>
    
    <br>
    <%@ include file="footer.jsp" %>
  </body>
</html>