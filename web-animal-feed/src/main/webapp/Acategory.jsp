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
    <link rel="stylesheet" href="admin/assets/css/category.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet"
          href="assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Quản lý Danh mục</title>
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
                    <a href="../dashboard/index.html">
                        <span class="las la-home"></span>
                        <small>Dashboard</small>
                    </a>
                </li>
                <li>
                    <a href="../product/productList/index.html">
                        <span class="las la-clipboard-list"></span>
                        <small>Product List</small>
                    </a>
                </li>
                <li>
                    <a href="../order/orderList.html">
                        <span class="las la-shopping-cart"></span>
                        <small>Order List</small>
                    </a>
                </li>
                <li>
                    <a href="admin/pages/category/index.html" class="active">
                        <span class="las la-clipboard-list"></span>
                        <small>Danh mục</small>
                    </a>
                </li>
                <li>
                    <a href="../brand/index.html">
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
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Danh mục</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Tên Danh mục</label>
                                <input type="text" class="form-control" id="exampleFormControlInput1"
                                       placeholder="Thức ăn cho Heo">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                            <button type="button" class="btn btn-primary">Lưu</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page-content">
            <div class="content-title">
                <div class="content-title-item content-title-stt">STT</div>
                <div class="content-title-item content-title-name">Tên Danh mục</div>
                <div class="content-title-item content-title-sub-name">Danh mục con</div>
                <div class="content-title-item content-title-edit">Thao tác</div>
            </div>
            <hr style="margin: 0; height: 2px">
            <div class="content-title">
                <div class="content-title-item content-title-stt">1</div>
                <div class="content-title-item content-title-name">Thức ăn cho Heo</div>
                <div class="content-title-item content-title-sub-name">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Danh mục con</option>
                        <option value="1">Heo con</option>
                        <option value="4">Heo nái</option>
                        <option value="2">Heo thịt</option>
                        <option value="3">Heo đực</option>
                    </select>
                </div>
                <div class="content-title-item content-title-edit">
                    <a href="#">
                        <span class="las la-edit"></span>
                    </a>
                </div>
            </div>
            <div class="content-title">
                <div class="content-title-item content-title-stt">2</div>
                <div class="content-title-item content-title-name">Thức ăn cho Cá</div>
                <div class="content-title-item content-title-sub-name">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Danh mục con</option>
                        <option value="1">Cá có vảy</option>
                        <option value="2">Cá Tra</option>
                        <option value="3">Cá Basa</option>
                    </select>
                </div>
                <div class="content-title-item content-title-edit">
                    <a href="#">
                        <span class="las la-edit"></span>
                    </a>
                </div>
            </div>
            <div class="content-title">
                <div class="content-title-item content-title-stt">3</div>
                <div class="content-title-item content-title-name">Thức ăn Gia Cầm</div>
                <div class="content-title-item content-title-sub-name">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Danh mục con</option>
                        <option value="1">Gà thịt</option>
                        <option value="4">Gà đẻ trứng</option>
                        <option value="2">Gà ta, Gà tàu</option>
                        <option value="3">Gà thả vườn</option>
                    </select>
                </div>
                <div class="content-title-item content-title-edit">
                    <a href="#">
                        <span class="las la-edit"></span>
                    </a>
                </div>
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
<script src="../../../front-end/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    function redirectToProductPage() {
        window.location.href = "../productEdit/product.html";
    }
</script>
</body>
</html>