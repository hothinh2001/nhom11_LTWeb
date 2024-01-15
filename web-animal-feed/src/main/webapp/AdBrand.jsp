<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    DAO dao = new DAO();
    dao.getAllBrands();
    List<Brand> listB = dao.getAllBrands();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/brand.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Quản lý Thương hiệu</title>
</head>
<body>
<input type="checkbox" id="menu-toggle">
<div class="sidebar">
    <div class="side-header">

        <h3>M<span>odern</span></h3>
    </div>

    <div class="side-content">
        <div class="profile">
            <div class="">
                <img alt='TravelerWP'
                     class='avatar avatar-50 photo profile-img bg-img' height='50' width='50' loading='lazy'
                     decoding='async'/>
            </div>
            <h4 class="user-name">TRAN NGOC BAO TRAN</h4>
            <span class="user-role"></span>
        </div>

        <div class="side-menu">
            <ul>
                <li>
                    <a href="admin/pages/dashboard/index.html">
                        <span class="las la-home"></span>
                        <small>Dashboard</small>
                    </a>
                </li>
                <li>
                    <a href="admin/pages/product/productList/index.html">
                        <span class="las la-clipboard-list"></span>
                        <small>Product List</small>
                    </a>
                </li>
                <li>
                    <a href="admin/pages/order/orderList.html">
                        <span class="las la-shopping-cart"></span>
                        <small>Order List</small>
                    </a>
                </li>
                <li>
                    <a href="admin/pages/category/index.html">
                        <span class="las la-clipboard-list"></span>
                        <small>Danh mục</small>
                    </a>
                </li>
                <li>
                    <a href="admin/pages/brand/index.html" class="active">
                        <span class="las la-clipboard-list"></span>
                        <small>Thương hiệu</small>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="main-content">

    <header>
        <div class="header-content">
            <label for="menu-toggle">
                <span class="las la-bars"></span>
            </label>

            <div class="header-menu">
                <label>
                    <span class="las la-search"></span>
                </label>


                <div class="notify-icon">
                    <span class="las la-bell"></span>
                    <span class="notify">3</span>
                </div>

                <div class="user">
                    <div class="bg-img" style="background-image: url(admin/assets/images/profile/user-1.jpg)"></div>

                    <span class="las la-power-off"></span>
                    <span>Đăng xuất</span>
                </div>
            </div>
        </div>
    </header>


    <main>
        <div class="page-header">
            <h1>Thương hiệu sản phẩm</h1>
            <small>Home / Thương hiệu sản phẩm</small>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
                Thêm Thương hiệu
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                 aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <form method="post" action="addBrand">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Thương hiệu</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="exampleFormControlInput1" class="form-label">Tên Thương hiệu</label>
                                    <input name="nameBrand" type="text" class="form-control"
                                           id="exampleFormControlInput1"
                                           placeholder="Con cò">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleFormControlInput2" class="form-label">Mô tả thương hiệu</label>
                                    <input name="note" type="text" class="form-control" id="exampleFormControlInput2">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                <button type="submit" class="btn btn-primary" value="addBrand">Lưu</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>

            <div class="page-content">
                <div class="content-title">
                    <div class="content-title-item content-title-stt">STT</div>
                    <div class="content-title-item content-title-name">Tên Thương hiệu</div>
                    <div class="content-title-item content-title-name">Mô tả thương hiệu</div>
                    <div class="content-title-item content-title-edit">Thao tác</div>
                </div>
                <hr style="margin: 0; height: 2px">
                <c:forEach var="b" items="${listB}" varStatus="loop">
                    <div class="content-title">
                        <div class="content-title-item content-title-stt">${loop.index + 1}
                        </div>
                        <div class="content-title-item content-title-name">${b.getNameBrand()}
                        </div>
                        <div class="content-title-item content-title-name">${b.getNote()}
                        </div>
                        <div class="content-title-item content-title-edit">
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#formEditBrand${loop.index}">
                                <span class="las la-edit"></span>
                            </button>
                        </div>
                        <div class="content-title-item content-title-delete">
                            <a href="deleteBrand?bid=${b.getId()}">
                                <button id="deleteButton" value="delete" type="button" class="btn btn-danger"
                                        data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                    <span class="las la-trash"></span>
                                </button>
                            </a>
                        </div>
                    </div>

                    <!-- Modal edit Brand cho từng thương hiệu -->
                    <div class="modal fade" id="formEditBrand${loop.index}" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalLongTitle2" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <form method="post" action="${pageContext.request.contextPath}/editBrand?bid=${b.getId()}">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle3">Thương hiệu</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <label for="editBrand5" class="form-label">Tên Thương hiệu</label>
                                            <input name="nameBrand" type="text" class="form-control" id="editBrand5"
                                                   value="${b.getNameBrand()}">
                                        </div>
                                        <div class="mb-3">
                                            <label for="editBrand4" class="form-label">Mô tả thương hiệu</label>
                                            <input name="note" type="text" class="form-control" id="editBrand4"
                                                   value="${b.getNote()}">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng
                                        </button>
                                        <button type="submit" class="btn btn-primary" value="editBrand">Lưu</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
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

<%--<script>--%>
<%--    function submitForm() {--%>
<%--        // Lấy ra form--%>
<%--        var form = document.forms[0];--%>

<%--        // Tạo một đối tượng XMLHttpRequest--%>
<%--        var xhr = new XMLHttpRequest();--%>

<%--        // Thiết lập phương thức và URL cho request--%>
<%--        xhr.open(form.method, form.action, true);--%>

<%--        // Thiết lập callback để xử lý khi request hoàn thành--%>
<%--        xhr.onload = function () {--%>
<%--            if (xhr.status === 200) {--%>
<%--                // Xử lý khi request thành công (nếu cần)--%>
<%--            } else {--%>
<%--                // Xử lý khi có lỗi (nếu cần)--%>
<%--            }--%>
<%--        };--%>
<%--        // Gửi request--%>
<%--        xhr.send(new FormData(form));--%>

<%--        // Ngăn chặn form submit theo cách thông thường--%>
<%--        return false;--%>
<%--    }--%>
<%--</script>--%>

</body>
</html>
