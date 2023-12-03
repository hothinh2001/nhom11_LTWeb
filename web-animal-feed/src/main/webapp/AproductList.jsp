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
    <link rel="stylesheet" href="admin/assets/css/AproductList.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet"
          href="assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Title</title>
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
                    <a href="admin/pages/product/productList/index.html" class="active">
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
                    <a href="../../brand/index.html">
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
            <h1>Danh sách sản phẩm</h1>
            <small>Home / Danh sách sản phẩm</small>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="redirectToProductPage()">
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
            <div class="content-title">
                <div class="content-title-item content-title-stt">1</div>
                <div class="content-title-item content-title-image">
                    <img src="admin/assets/images/ga/c21.png">
                </div>
                <div class="content-title-item content-title-name">Con Cò C21</div>
                <div class="content-title-item content-title-price">465.000</div>
                <div class="content-title-item content-title-category">Thức ăn Gia Cầm</div>
                <div class="content-title-item content-title-brand">Con Cò</div>
                <div class="content-title-item content-title-quantity">500</div>
                <div class="content-title-item content-title-edit">
                    <a href="../productEdit/product.html">
                        <span class="las la-edit"></span>
                    </a>


                </div>
                <div class="content-title-item content-title-delete">
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        <span class="las la-trash"></span>
                    </button>
                </div>
            </div>
            <div class="content-title">
                <div class="content-title-item content-title-stt">2</div>
                <div class="content-title-item content-title-image">
                    <img src="admin/assets/images/ga/c24s.png">
                </div>
                <div class="content-title-item content-title-name">Con Cò C24s</div>
                <div class="content-title-item content-title-price">465.000</div>
                <div class="content-title-item content-title-category">Thức ăn Gia Cầm</div>
                <div class="content-title-item content-title-brand">Con Cò</div>
                <div class="content-title-item content-title-quantity">40</div>
                <div class="content-title-item content-title-edit">
                    <a href="../productEdit/product.html">
                        <span class="las la-edit"></span>
                    </a>


                </div>
                <div class="content-title-item content-title-delete">
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        <span class="las la-trash"></span>
                    </button>
                </div>
            </div>
            <div class="content-title">
                <div class="content-title-item content-title-stt">3</div>
                <div class="content-title-item content-title-image">
                    <img src="admin/assets/images/ga/con-co-ai-cap.png">
                </div>
                <div class="content-title-item content-title-name">Con Cò Ai Cập</div>
                <div class="content-title-item content-title-price">465.000</div>
                <div class="content-title-item content-title-category">Thức ăn Gia Cầm</div>
                <div class="content-title-item content-title-brand">Con Cò</div>
                <div class="content-title-item content-title-quantity">10</div>
                <div class="content-title-item content-title-edit">
                    <a href="../productEdit/product.html">
                        <span class="las la-edit"></span>
                    </a>


                </div>
                <div class="content-title-item content-title-delete">
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        <span class="las la-trash"></span>
                    </button>
                </div>
            </div>
        </div>

    </main>

</div>
<script src="./assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    function redirectToProductPage() {
        window.location.href = "../productEdit/product.html";
    }
</script>
</body>
</html>
