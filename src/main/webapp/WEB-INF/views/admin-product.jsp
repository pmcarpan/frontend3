<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
  <c:choose>
  
    <c:when test="${empty productList}">
      <h2>Product List is empty</h2>
    </c:when>
    <c:otherwise>
      <h2>List of Products</h2>
      
      <br>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Product Id</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Description</th>
            <th scope="col">Seller</th>
            <th scope="col">Category</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${productList}" var="product">
            <tr>
              <td class="align-middle">${product.id}</td> 
              <td class="align-middle">${product.name}</td>
              <td class="align-middle">${product.price}</td>
              <td class="align-middle">${product.description}</td>
              <td class="align-middle">${product.seller.name}</td>
              <td class="align-middle">${product.category.name}</td>
              <td class="align-middle">
                <a class="btn btn-danger" 
                   href="${pageContext.request.contextPath}/admin/product/delete/${product.id}">Delete</a>
                /
                <a class="btn btn-primary" 
                   href="${pageContext.request.contextPath}/admin/product/update/${product.id}">Update</a>
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
          Insert Product
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/product/insert" enctype="multipart/form-data" method="post">
            <div class="form-group">
              <label for="pname">Product Name</label>
              <input type="text" class="form-control" name="name" id="pname" placeholder="Product Name">
              <div class="text-danger">
                <small><form:errors path="product.name" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="price">Price</label>
              <input type="number" step="0.01" class="form-control" name="price" id="price" placeholder="1000.50">
              <div class="text-danger">
                <small><form:errors path="product.price" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="desc">Description</label>
              <input type="text" class="form-control" name="description" id="desc" placeholder="Example Description">
              <div class="text-danger">
                <small><form:errors path="product.description" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="cID">Category Id</label>
<!--               <input type="text" class="form-control" name="categoryId" id="cID" placeholder="0" required> -->
              <select id="cID" name="categoryId" class="form-control">
                <c:forEach items="${categoryList}" var="cat">
                  <option value="${cat.id}">${cat.id} - ${cat.name}</option> 
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="sID">Seller Id</label>
              <!-- <input type="text" class="form-control" name="sellerId" id="sID" placeholder="0" required> -->
              <select id="sID" name="sellerId" class="form-control">
                <c:forEach items="${sellerList}" var="sel">
                  <option value="${sel.id}">${sel.id} - ${sel.name}</option> 
                </c:forEach>
              </select>
            </div>
            <div class="form-group">
              <label for="image">Image</label>
              <input type="file" class="form-control-file" name="image" id="image" accept=".jpe, .jpg, .jpeg, .png, .gif">
              <div class="text-danger">
                <small><form:errors path="product.image" /></small>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Insert</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
