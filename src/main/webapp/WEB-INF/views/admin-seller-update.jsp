<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <input type="text" class="form-control" name="id" id="id" value="${seller.id}" required>
              </div>
            <div class="form-group">
              <label for="sellername">Seller Name</label>
              <input type="text" class="form-control" name="name" id="sellername" value="${seller.name}" required autofocus>
            </div>
            <div class="form-group">
              <label for="address">Seller Address</label>
              <input type="text" class="form-control" name="address" id="address" value="${seller.address}" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
