<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec"
  uri="http://www.springframework.org/security/tags"%>
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
    
    <%--
    <p>${adminLoggedIn}</p>
    <p>${userLoggedIn}</p> 
    --%>
    

      <sec:authorize access="hasRole('ROLE_ADMIN')">

        <%@ include file="admin-home.jsp" %> 
        
        <c:if test="${adminView == 'seller'}">
          <%@ include file="admin-seller.jsp" %>
        </c:if>
        <c:if test="${adminView == 'sellerUpdate'}">
          <%@ include file="admin-seller-update.jsp" %>
        </c:if>
        <c:if test="${adminView == 'category'}">
          <%@ include file="admin-category.jsp" %>
        </c:if>
        <c:if test="${adminView == 'categoryUpdate'}">
          <%@ include file="admin-category-update.jsp" %>
        </c:if>
        <c:if test="${adminView == 'product'}">
          <%@ include file="admin-product.jsp" %>
        </c:if>
        <c:if test="${adminView == 'productUpdate'}">
          <%@ include file="admin-product-update.jsp" %>
        </c:if>

      </sec:authorize>
      
      <sec:authorize access="isAnonymous() || hasRole('ROLE_USER')">

        <%@ include file="user-home.jsp" %> 

      </sec:authorize>

    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
