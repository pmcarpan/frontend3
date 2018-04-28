<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
  <div class="row justify-content-center">
    <div class="col-6">
      <div class="card bg-primary">
        <div class="card-header text-light">
          Update Category
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/category/update" method="post">
              <div class="form-group">
                <label for="id">Category Id</label>
                <input type="text" class="form-control" name="id" id="id" value="${category.id}" required readonly>
              </div>
            <div class="form-group">
              <label for="catname">Category Name</label>
              <input type="text" class="form-control" name="name" id="catname" value="${category.name}" autofocus>
              <div class="text-danger">
                <small><form:errors path="category.name" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="desc">Category Description</label>
              <input type="text" class="form-control" name="description" id="desc" value="${category.description}">
              <div class="text-danger">
                <small><form:errors path="category.description" /></small>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
