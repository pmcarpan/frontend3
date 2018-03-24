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
    
    <div class="row justify-content-center">
      <div class="col-6">
        <div class="card bg-primary">
  	      <div class="card-header text-light">
  	        Register
  	      </div>
  	      <div class="card-body bg-white">
            <form action="${pageContext.request.contextPath}/registerUser" method="post">
              <div class="row">
                <div class="col-6">
                  <div class="form-group">
                    <label for="firstname">First Name</label>
                    <input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name" required autofocus>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group">
                    <label for="lastname">Last Name</label>
                    <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name" required>
                  </div>
                </div>
              </div> 
              <div class="row">   
                <div class="col-8">  
                  <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="user@example.com" required>
                  </div>
                </div>
                <div class="col-4">
                  <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="number" class="form-control" name="phone" id="phone" placeholder="9999999999" required>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" name="address" id="address" placeholder="1 Example Road, Delhi - 01" required>
              </div>
              <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Username" required>
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
              </div>
              <button type="submit" class="btn btn-primary">Register</button>
            </form>
          </div>
  	    </div>
      </div>
    </div>
    
    <br>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
