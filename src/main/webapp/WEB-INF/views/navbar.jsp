<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec"
  uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <!--  <a class="navbar-brand" href="#">Navbar</a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link text-light" href="${pageContext.request.contextPath}/">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="${pageContext.request.contextPath}/about">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="${pageContext.request.contextPath}/contact">Contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="${pageContext.request.contextPath}/product/viewAll">Products</a>
      </li>
      <%-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Products
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/product/viewAll">All Products</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Cat 1</a>
          <a class="dropdown-item" href="#">Cat 2</a>
          <a class="dropdown-item" href="#">Cat 3</a>
        </div>
      </li> --%>
    </ul>
    <ul class="navbar-nav">

        <sec:authorize access="isAuthenticated()">
        <%-- <c:when test="${userLoggedIn || adminLoggedIn}"> --%>
          <li class="nav-item text-warning navbar-text mr-2">
            ${pageContext.request.userPrincipal.name}
            <sec:authorize access="hasRole('ROLE_ADMIN')">
              <span class="font-weight-bold">Administrator</span>
            </sec:authorize>
          </li>
          <li class="nav-item text-light">
            <a class="nav-link text-light" href="${pageContext.request.contextPath}/cart">Cart</a>
          </li>
          <li class="nav-item text-light">
            <a class="nav-link text-light" href="${pageContext.request.contextPath}/logout">Sign Out</a>
          </li>
        <%-- </c:when> --%>
        </sec:authorize>
        <%-- <c:otherwise> --%>
        <sec:authorize access="isAnonymous()">
          <li class="nav-item">
            <a class="nav-link text-light" href="${pageContext.request.contextPath}/login">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light" href="${pageContext.request.contextPath}/register">Register</a>
          </li>
         <%-- </c:otherwise> --%>
        </sec:authorize>
    </ul>
  </div>
</nav>