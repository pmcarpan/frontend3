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
      <h2>Get in touch, send us an email.</h2>
      
      <br>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Nature of issue</th>
            <th scope="col">Corresponding contact information</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>For product or order related queries</td>
			<td>customercare@onlinestore.com</td>
          </tr>
          <tr>
            <td>For business or collaboaration related queries</td>
			<td>business@onlinestore.com</td>
          </tr>
          <tr>
            <td>For all other purposes</td>
			<td>other@onlinestore.com</td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
