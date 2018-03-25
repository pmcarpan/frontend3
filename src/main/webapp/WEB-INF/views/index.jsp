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
    
    <%--
    <p>${adminLoggedIn}</p>
    <p>${userLoggedIn}</p> 
    --%>
    
    <c:choose>
      <c:when test="${adminLoggedIn}">
        <%@ include file="admin-home.jsp" %> 
        
        <c:if test="${adminView == 'seller'}">
          <%@ include file="admin-seller.jsp" %>
        </c:if>
        <c:if test="${adminView == 'sellerUpdate'}">
          <%@ include file="admin-seller-update.jsp" %>
        </c:if>
        
      </c:when>
      <c:otherwise>
        <%@ include file="user-home.jsp" %> 
      </c:otherwise>
    </c:choose>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
