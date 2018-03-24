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
      <c:if test="${msg == 'invalid'}">
        <div class="row justify-content-center">
          <div class="col-6">
            <div class="alert alert-danger text-center">
              Invalid Username or Password!
            </div>
          </div>
        </div>
      </c:if>
        
      <div class="row justify-content-center">
        <div class="col-6">
          <div class="card bg-primary">
    	    <div class="card-header text-light">
    	      Login
    	    </div>
    	    <div class="card-body bg-white">
              <form action="${pageContext.request.contextPath}/loginUser" method="post">
                <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" name="username" id="username" placeholder="Username" required autofocus>
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
              </form>
            </div>
            <div class="card-footer bg-white">
              New User? <a href="register">Register!</a>
            </div>
    	  </div>
        </div>
      </div>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
