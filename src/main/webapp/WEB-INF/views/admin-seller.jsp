<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
  <c:choose>
  
    <c:when test="${empty sellerList}">
      <h2>Seller List is empty</h2>
    </c:when>
    <c:otherwise>
      <c:if test="${sellerMsg == 'cannotDelete'}">
        <div class="row justify-content-center">
          <div class="col-8">
            <div class="alert alert-danger text-center">
              Could not delete seller. Check whether seller is currently selling some products or not.
            </div>
          </div>
        </div>
      </c:if>
      
      <h2>List of Sellers</h2>
      
      <br>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Seller Id</th>
            <th scope="col">Seller Name</th>
            <th scope="col">Seller Address</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${sellerList}" var="seller">
            <tr>
              <td class="align-middle">${seller.id}</td> 
              <td class="align-middle">${seller.name}</td>
              <td class="align-middle">${seller.address}</td>
              <td class="align-middle">
                <a class="btn btn-danger" 
                   href="${pageContext.request.contextPath}/admin/seller/delete/${seller.id}">Delete</a>
                /
                <a class="btn btn-primary" 
                   href="${pageContext.request.contextPath}/admin/seller/update/${seller.id}">Update</a>
              </td>
            </tr>
          </c:forEach>
          <tr>
        </tbody>
      </table>
    </c:otherwise>
  </c:choose>
</div>

<br>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-6">
      <div class="card bg-primary">
        <div class="card-header text-light">
          Insert Seller
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/seller/insert" method="post">
            <div class="form-group">
              <label for="sellername">Seller Name</label>
              <input type="text" class="form-control" name="name" id="sellername" placeholder="Seller Name">
              <div class="text-danger">
                <small><form:errors path="seller.name" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="address">Seller Address</label>
              <input type="text" class="form-control" name="address" id="address" placeholder="1 Example Road, Delhi - 01">
              <div class="text-danger">
                <small><form:errors path="seller.address" /></small>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Insert</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
