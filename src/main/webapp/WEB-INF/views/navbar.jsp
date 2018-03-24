<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <!--  <a class="navbar-brand" href="#">Navbar</a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/about">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/contact">Contact Us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Products
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">All Products</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Cat 1</a>
          <a class="dropdown-item" href="#">Cat 2</a>
          <a class="dropdown-item" href="#">Cat 3</a>
        </div>
      </li>
    </ul>
    <ul class="navbar-nav">
      <c:if test = "${adminLoggedIn}">
        <li class="nav-item text-warning navbar-text">
          Admin Logged In!
        </li>
      </c:if>
      <c:choose>
        <c:when test="${userLoggedIn || adminLoggedIn}">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/signout">Sign Out</a>
          </li>
        </c:when>
        <c:otherwise>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
          </li>
         </c:otherwise>
      </c:choose>
    </ul>
  </div>
</nav>