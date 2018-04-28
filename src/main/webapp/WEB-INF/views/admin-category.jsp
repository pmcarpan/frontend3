<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
  <c:choose>
  
    <c:when test="${empty categoryList}">
      <h2>Category List is empty</h2>
    </c:when>
    <c:otherwise>
      <c:if test="${categoryMsg == 'cannotDelete'}">
        <div class="row justify-content-center">
          <div class="col-8">
            <div class="alert alert-danger text-center">
              Could not delete category. Check whether there are some products in the category or not.
            </div>
          </div>
        </div>
      </c:if>
    
      <h2>List of Categories</h2>
      
      <br>
      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Category Id</th>
            <th scope="col">Category Name</th>
            <th scope="col">Category Description</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${categoryList}" var="category">
            <tr>
              <td class="align-middle">${category.id}</td> 
              <td class="align-middle">${category.name}</td>
              <td class="align-middle">${category.description}</td>
              <td class="align-middle">
                <a class="btn btn-danger" 
                   href="${pageContext.request.contextPath}/admin/category/delete/${category.id}">Delete</a>
                /
                <a class="btn btn-primary" 
                   href="${pageContext.request.contextPath}/admin/category/update/${category.id}">Update</a>
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
          Insert Category
        </div>
        <div class="card-body bg-white">
          <form action="${pageContext.request.contextPath}/admin/category/insert" method="post">
            <div class="form-group">
              <label for="catname">Category Name</label>
              <input type="text" class="form-control" name="name" id="catname" placeholder="Category Name">
              <div class="text-danger">
                <small><form:errors path="category.name" /></small>
              </div>
            </div>
            <div class="form-group">
              <label for="desc">Category Description</label>
              <input type="text" class="form-control" name="description" id="desc" placeholder="Example Description">
              <div class="text-danger">
                <small><form:errors path="category.description" /></small>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">Insert</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
