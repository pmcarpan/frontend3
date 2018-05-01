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
    
    <%-- <form:errors path="user.*" /> --%>
    
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6">
          <div class="card bg-primary">
    	      <div class="card-header text-light">
    	        Register
    	      </div>
    	      <div class="card-body bg-white">
              <form action="${pageContext.request.contextPath}/registerUser" method="post">
                <div class="row">
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="firstname">First Name</label>
                      <input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name"  autofocus>
                      <div class="text-danger">
                        <small><form:errors path="user.firstname" /></small>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="lastname">Last Name</label>
                      <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name" >
                      <div class="text-danger">
                        <small><form:errors path="user.lastname" /></small>
                      </div>
                    </div>
                  </div>
                </div> 
                <div class="row">   
                  <div class="col-12 col-md-8">  
                    <div class="form-group">
                      <label for="email">Email Address</label>
                      <input type="email" class="form-control" name="email" id="email" placeholder="user@example.com" >
                      <div class="text-danger">
                        <small><form:errors path="user.email" /></small>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="phone">Phone Number</label>
                      <input type="text" class="form-control" name="phone" id="phone" placeholder="9123456780" >
                      <div class="text-danger">
                        <small><form:errors path="user.phone" /></small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="address">Address</label>
                  <input type="text" class="form-control" name="address" id="address" placeholder="1 Example Road, Delhi - 01" >
                  <div class="text-danger">
                    <small><form:errors path="user.address" /></small>
                  </div>
                </div>
                <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" name="username" id="username" placeholder="Username" >
                  <div class="text-danger">
                    <small><form:errors path="user.username" /></small>
                  </div>
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" name="password" id="password" placeholder="Password" >
                  <div class="text-danger">
                    <small><form:errors path="user.password" /></small>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
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
