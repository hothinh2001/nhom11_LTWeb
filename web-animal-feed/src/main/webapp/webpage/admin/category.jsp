<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/category.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/headerAdmin.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Quản lý Danh mục</title>
</head>
<body>

<div class="main-content">

    <jsp:include page="../include/sideBar.jsp"/>

    <jsp:include page="headerAdmin.jsp"/>

    <main>
        <div class="page-header">
            <h1>Danh mục sản phẩm</h1>
            <small>Home / Danh mục sản phẩm</small>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
                Thêm Danh mục
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                 aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <form method="post" action="addCategory">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Danh mục</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput1" class="form-label">Tên danh mục</label>
                                    <input name="nameCate" type="text" class="form-control"
                                           id="exampleFormControlInput1"
                                           placeholder="Thức ăn cho heo">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleFormControlInput2" class="form-label">Biểu tượng cho Danh
                                        mục</label>
                                    <input name="iconCate" type="text" class="form-control"
                                           id="exampleFormControlInput2">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                <button type="submit" class="btn btn-primary" value="addCategory">Lưu</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>

            <!-- Modal -->

        </div>

        <div class="page-content">
            <div class="content-title">
                <div class="content-title-item content-title-stt">STT</div>
                <div class="content-title-item content-title-name">Tên Danh mục</div>
                <div class="content-title-item content-title-edit">Thao tác</div>
            </div>
            <hr style="margin: 0; height: 2px">
            <c:forEach items="${listC}" var="listC" varStatus="loop">
                <div class="content-title">
                    <div class="content-title-item content-title-stt">${loop.index + 1}</div>
                    <div class="content-title-item content-title-name">${listC.getNameCate()}</div>
                    <div class="content-title-item content-title-edit">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#formEditCategory${loop.index}">
                            <span class="las la-edit"></span>
                        </button>
                    </div>
                </div>

                <!-- Modal edit Category cho từng Danh mục-->
                <div class="modal fade" id="formEditCategory${loop.index}" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalLongTitle2" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <form method="post"
                              action="${pageContext.request.contextPath}/editCategory?cid=${listC.getId()}">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle3">Danh mục</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <label for="editBrand5" class="form-label">Tên Danh mục</label>
                                        <input name="nameCate" type="text" class="form-control" id="editBrand5"
                                               value="${listC.getNameCate()}">
                                    </div>
                                    <div class="mb-3">
                                        <label for="editBrand4" class="form-label">Biểu tượng Danh mục</label>
                                        <input name="iconCate" type="text" class="form-control" id="editBrand4"
                                               value="${listC.getIconCate()}">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng
                                    </button>
                                    <button type="submit" class="btn btn-primary"
                                            value="${pageContext.request.contextPath}/editCategory">Lưu
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </c:forEach>

        </div>
    </main>

</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    function redirectToProductPage() {
        window.location.href = "../productEdit/product.html";
    }
</script>
</body>
</html>