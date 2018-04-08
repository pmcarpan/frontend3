<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-6">
      <div class="card bg-primary">
        <div class="card-header text-light">
          Update Product
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/product/update" method="post">
            <div class="form-group">
              <label for="id">Product Id</label>
              <input type="text" class="form-control" name="id" id="id" value="${product.id}" required readonly>
            </div>
            <div class="form-group">
              <label for="pname">Product Name</label>
              <input type="text" class="form-control" name="name" id="pname" value="${product.name}" placeholder="Product Name" required autofocus>
            </div>
            <div class="form-group">
              <label for="price">Price</label>
              <input type="text" class="form-control" name="price" id="price" value="${product.price}" placeholder="1000.50" required>
            </div>
            <div class="form-group">
              <label for="desc">Description</label>
              <input type="text" class="form-control" name="description" id="desc" value="${product.description}" placeholder="Example Description" required>
            </div>
            <div class="form-group">
              <label for="cID">Category Id</label>
              <input type="text" class="form-control" name="categoryId" id="cID" value="${product.categoryId}" placeholder="0" required>
            </div>
            <div class="form-group">
              <label for="sID">Seller Id</label>
              <input type="text" class="form-control" name="sellerId" id="sID" value="${product.sellerId}" placeholder="0" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
