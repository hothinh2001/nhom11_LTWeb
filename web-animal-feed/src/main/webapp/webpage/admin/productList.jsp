<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/AproductList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/headerAdmin.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Title</title>
</head>
<body>


<div class="main-content">

    <jsp:include page="../include/sideBar.jsp"/>

    <jsp:include page="headerAdmin.jsp"/>


    <main>
        <div class="page-header">
            <h1>Danh sách sản phẩm</h1>
            <small>Home / Danh sách sản phẩm</small>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                    onclick="redirectToProductPage()">
                Thêm sản phẩm
            </button>
        </div>


        <div class="page-content">
            <div class="content-title">
                <div class="content-title-item content-title-stt">STT</div>
                <div class="content-title-item content-title-image">Hình ảnh</div>
                <div class="content-title-item content-title-name">Tên sản phẩm</div>
                <div class="content-title-item content-title-price">Giá</div>
                <div class="content-title-item content-title-category">Danh mục</div>
                <div class="content-title-item content-title-brand">Thương hiệu</div>
                <div class="content-title-item content-title-quantity">Số lượng</div>
                <div class="content-title-item content-title-edit">Thao tác</div>
                <div class="content-title-item content-title-delete">Xóa sản phẩm</div>
            </div>
            <hr style="margin: 0; height: 2px">
            <c:forEach items="${listP}" var="p" varStatus="loop">
                <div class="content-title">
                    <div class="content-title-item content-title-stt">${loop.index + 1}</div>
                    <div class="content-title-item content-title-image">
                        <img src="${p.getUrlImage()}" alt="${p.getName()}">
                    </div>
                    <div class="content-title-item content-title-name">${p.getName()}</div>
                    <div class="content-title-item content-title-price">${p.getPrice()}</div>
                    <div class="content-title-item content-title-category">${p.getCategory().getNameCate()}</div>
                    <div class="content-title-item content-title-brand">${p.getBrand().getNameBrand()}</div>
                    <div class="content-title-item content-title-quantity">${p.getQuantityAvailable()}</div>

                    <div class="content-title-item content-title-edit">
                        <a href="loadProduct?pid=${p.getId()}">
                            <span class="las la-edit"></span>
                        </a>


                    </div>
                    <div class="content-title-item content-title-delete">
                        <a href="delete?pid=${p.getId()}">
                            <button id="deleteButton" value="delete" type="button" class="btn btn-danger"
                                    data-bs-toggle="modal"
                                    data-bs-target="#exampleModal">
                                <span class="las la-trash"></span>
                            </button>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>


    </main>

</div>
<script src="../../assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    function redirectToProductPage() {
        window.location.href = "webpage/admin/addProduct.jsp";
    }
</script>

</body>
</html>
