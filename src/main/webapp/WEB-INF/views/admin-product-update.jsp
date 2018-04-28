<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-6">
      <div class="card bg-primary">
        <div class="card-header text-light">
          Update Product
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/product/update" enctype="multipart/form-data" method="post">
            <div class="form-group">
              <label for="id">Product Id</label>
              <input type="text" class="form-control" name="id" id="id" value="${product.id}" required readonly>
            </div>
            <div class="form-group">
              <label for="pname">Product Name</label>
              <input type="text" class="form-control" name="name" id="pname" value="${product.name}" placeholder="Product Name" autofocus>
              <div class="text-danger">
                <small><form:errors path="product.name" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="price">Price</label>
              <input type="number" step="0.01" class="form-control" name="price" id="price" value="${product.price}" placeholder="1000.50">
              <div class="text-danger">
                <small><form:errors path="product.price" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="desc">Description</label>
              <input type="text" class="form-control" name="description" id="desc" value="${product.description}" placeholder="Example Description">
              <div class="text-danger">
                <small><form:errors path="product.description" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="cID">Category Id</label>
              <select id="cID" name="categoryId" class="form-control">
                <c:forEach items="${categoryList}" var="cat">
                  <option value="${cat.id}">${cat.id} - ${cat.name}</option> 
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="sID">Seller Id</label>
              <select id="sID" name="sellerId" class="form-control">
                <c:forEach items="${sellerList}" var="sel">
                  <option value="${sel.id}">${sel.id} - ${sel.name}</option> 
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="image">Image</label>
              <input type="file" class="form-control-file" name="image" id="image" accept=".jpe, .jpg, .jpeg, .png, .gif">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
