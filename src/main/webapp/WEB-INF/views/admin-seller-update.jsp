<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-6">
      <div class="card bg-primary">
        <div class="card-header text-light">
          Update Seller
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/seller/update" method="post">
              <div class="form-group">
                <label for="id">Seller Id</label>
                <input type="text" class="form-control" name="id" id="id" value="${seller.id}" required readonly>
              </div>
            <div class="form-group">
              <label for="sellername">Seller Name</label>
              <input type="text" class="form-control" name="name" id="sellername" value="${seller.name}" autofocus>
              <div class="text-danger">
                <small><form:errors path="seller.name" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="address">Seller Address</label>
              <input type="text" class="form-control" name="address" id="address" value="${seller.address}">
              <div class="text-danger">
                <small><form:errors path="seller.address" /></small>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
