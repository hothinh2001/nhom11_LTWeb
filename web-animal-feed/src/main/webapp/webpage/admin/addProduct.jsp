<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Inventory" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO" %><%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 9:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% DAO dao = new DAO();
    List<Category> listC = dao.getAllCategory();
    List<Brand> listB = dao.getAllBrands();
    List<Inventory> listI = dao.getAllInventories();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <!--  <link rel="stylesheet" href="/assets/css/dashboard.css">-->
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/AproductEdit.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/headerAdmin.css">
    <link rel="stylesheet"
          href="../../assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>


<div class="main-content">

    <jsp:include page="../include/sideBar.jsp"/>

    <jsp:include page="headerAdmin.jsp"/>


    <main>
        <div class="page-header">
            <h1>Tạo sản phẩm</h1>
            <small>Home / Tạo sản phẩm</small>
        </div>

        <div class="page-content">
            <form action="add" method="post" enctype="multipart/form-data">
                <div class="form-content">
                    <div class="form-content-left">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Tên sản phẩm</label>
                            <input name="name" type="text" class="form-control" id="exampleFormControlInput1" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput2" class="form-label">Tên mô tả sản phẩm</label>
                            <input name="nameDetail" type="text" class="form-control" id="exampleFormControlInput2"
                                   required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Thông tin nguyên liệu</label>
                            <textarea name="ingredients" class="form-control" id="exampleFormControlTextarea1"
                                      rows="3" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Thông tin dinh dưỡng</label>
                            <textarea name="nutritionInfo" class="form-control" id="exampleFormControlTextarea2"
                                      rows="3" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Hướng dẫn sử dụng</label>
                            <textarea name="usageInstruction" class="form-control" id="exampleFormControlTextarea3"
                                      rows="3" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput3" class="form-label">Giá của sản phẩm</label>
                            <input name="price" type="text" class="form-control" id="exampleFormControlInput3" required>
                        </div>
                        <div class="mb-3">
                            <%--                            <label for="exampleFormControlInput4" class="form-label">Thêm ảnh</label>--%>
                            <%--                            <input name="urlImage" type="url" class="form-control" id="exampleFormControlInput4"--%>
                            <%--                                   required>--%>
                            <label for="exampleFormControlInput4" class="form-label">Thêm ảnh</label>--%>
                            <input name="urlImage" type="file" class="form-control" id="exampleFormControlInput4">
                            <button>Upload</button>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput4" class="form-label">Số lượng trong kho</label>
                            <input name="quantityAvailable" type="number" class="form-control"
                                   id="exampleFormControlInput5"
                                   required>
                        </div>
                    </div>
                    <div class="form-content-right">
                        <div class="form-content-right-top">
                            <div class="form-content-category">
                                <select name="inventoryId" class="form-select" aria-label="Default select example"
                                        required>
                                    <option selected>Kho</option>
                                    <% for (Inventory i : listI) { %>
                                    <option value="<%=i.getId()%>"><%=i.getNote()%>
                                    </option>
                                    <% }
                                    %>
                                </select>
                            </div>
                            <div class="form-content-category">
                                <select name="categoryId" class="form-select" aria-label="Default select example"
                                        required>
                                    <option selected>Loại sản phẩm</option>
                                    <% for (Category c : listC) { %>
                                    <option value="<%= c.getId() %>"><%= c.getNameCate() %>
                                    </option>
                                    <% }
                                    %>
                                </select>
                            </div>
                            <div class="form-content-brand">
                                <select name="brandId" class="form-select" aria-label="Default select example" required>
                                    <option selected>Thương hiệu</option>
                                    <% for (Brand b : listB) { %>
                                    <option value="<%= b.getId() %>"><%= b.getNameBrand() %>
                                        <% }
                                        %>
                                    </option>
                                </select>
                            </div>
                            <div class="form-content-created">
                                <label for="datepicker">Chọn ngày tạo:</label>
                                <input type="date" id="datepicker" name="createdAt" required/>
                            </div>
                            <div class="form-content-modified">
                                <label for="datepicker">Ngày chỉnh sửa:</label>
                                <input type="date" id="datepicker2" name="modifiedAt" required/>
                            </div>
                        </div>
                        <div class="form-content-button">
                            <button type="submit" class="btn btn-primary btn-lg" value="add">Tạo sản phẩm</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

    </main>

</div>
</body>

</html>
