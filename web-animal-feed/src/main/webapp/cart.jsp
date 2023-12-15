<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- favicon -->
    <link
            rel="shortcut icon"
            href="././assets/img/logo.jpg"
            type="image/x-icon"
    />
    <title>Shop Manager</title>
    <link rel="stylesheet" href="././assets/css/normalize.css"/>
    <link rel="stylesheet" href="././assets/css/base.css"/>
    <link rel="stylesheet" href="././assets/css/main&productList.css"/>
    <link rel="stylesheet" href="././assets/css/grid.css"/>
    <link rel="stylesheet" href="././assets/css/responsive.css"/>
    <link rel="stylesheet" href="./assets/css/cart.css"/>
    <link rel="stylesheet" href="././assets/css/responsive.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            rel="stylesheet"
            href="././assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
            rel="stylesheet"
    />
    <link
            href="././assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css"
            rel="stylesheet"
    />
</head>
<body>
<!-- Header start -->
<jsp:include page="header.jsp"/>
<!-- Header end -->
<!-- Container start -->
<div class="app__container">
    <div class="grid wide">
        <!-- Breadcrumb start -->
        <div class="breadcrumb-wrapper">
            <ul class="breadcrumb-content">
                <li class="breadcrumb-item">
                    <a href="#" class="breadcrumb-item__link"> Trang chủ </a>
                    <i class="fa-solid fa-chevron-right"></i>
                </li>

                <li class="breadcrumb-item breadcrumb-item--active">
                    <a href="#" class="breadcrumb-item__link"> Giỏ hàng </a>
                </li>
            </ul>
        </div>

        <!-- Breadcrumb end -->

        <!-- Cart detail start -->
        <div class="cart-detail">
            <div class="cart-detail-wrapper row">
                <div class="col l-8 m-12 c-12 cart-detail__left">
                    <div class="cart-detail__left-wrapper">
                        <div class="cart-detail__left-heading">
                            <h3 class="cart-detail__left-heading-title">Giỏ hàng</h3>
                            <span class="cart-detail__left-heading-quantity"
                            >2 sản phẩm</span
                            >
                        </div>
                        <div class="cart-detail__left-body">
                            <ul class="">
                                <c:forEach items="${cartMap.data.values()}" var="cart">
                                    <li>
                                      <span>
                                            <img src="${cart.getProduct().getUrlImage()}" alt=""
                                                 class="cart-detail__left-list-img"/>
                                      </span>
                                        <span class="cart-detail__left-list-name">${cart.getProduct().getName()}</span>
                                        <span class="cart-detail__left-list-price">${cart.getProduct().getPrice()}</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Cart detail end -->

        <div class="cart-detail">
            <div class="cart-detail-wrapper row">
                <div class="col l-8 m-12 c-12">
                    <div class="cart-detail__button">
                        <div class="cart-detail__button-delete">
                            <button class="btn-base btn-delete">Xóa giỏ hàng</button>
                        </div>
                        <div class="cart-detail__total-button">
                            <div class="cart-detail__total">
                                Tổng tiền: <span class="cart-detail__btn-confirm-total-price">1.695.000đ</span>
                            </div>
                            <div class="cart-detail__btn-confirm">
                                <button class="btn-base btn-confirm" onclick="clickCheckout()">Tiến hành đặt hàng
                                </button>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<!--      footer page-->

<footer class="" id="footer">
    <div class="grid wide">
        <div class="footer--content">
            <div class="footer--item">
                <p>
                    © 2019 Cargill, Incorporated.<br/>Bản Quyền Được Bảo Lưu.
                    <br/>Phát triển bởi
                    BA AE SIÊU NHÂN
                </p>
            </div>
            <div class="footer--item hide-on-mobile">
                <div class="col-inner">
                    <div
                            id="gap-2083060811"
                            class="gap-element clearfix show-for-medium"
                            style="display: block; height: auto"
                    ></div>
                    <h5>Văn phòng Cargill tại Việt Nam</h5>
                    <p>
                        Lầu 10-11, Trung tâm Thương mại Maple Tree 1060 Nguyễn Văn Linh,
                        P. Tân Phong, Q.7, TP Hồ Chí Minh, Việt Nam<br/>Tel:
                        +84-28-5416 1515<br/>Fax: +84-28-5416 0495
                    </p>
                </div>
            </div>
            <div class="footer--item footer--item-2 hide-on-tablet">
                <div class="col-inner">
                    <h5>Sản phẩm</h5>
                    <div class="row row-small" id="row-1858634641">
                        <div class="col medium-6 small-12 large-6">
                            <div class="col-inner">
                                <div class="vinahi-menuwrap">
                                    <div class="menu-menu-chuyen-muc-footer-left-container">
                                        <ul
                                                id="menu-menu-chuyen-muc-footer-left"
                                                class="vinahi-menu"
                                        >
                                            <li
                                                    id="menu-item-2398"
                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2398"
                                            >
                                                <a href="#"
                                                >Thức ăn cho Heo</a
                                                >
                                            </li>
                                            <li
                                                    id="menu-item-2399"
                                                    class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item current_page_item menu-item-2399"
                                            >
                                                <a
                                                        href="#"
                                                        aria-current="page"
                                                >Thức ăn cho Cá</a
                                                >
                                            </li>
                                            <li
                                                    id="menu-item-2400"
                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2400"
                                            >
                                                <a
                                                        href="#"
                                                >Thức ăn Gia Cầm</a
                                                >
                                            </li>
                                            <li
                                                    id="menu-item-2401"
                                                    class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2401"
                                            >
                                                <a
                                                        href="#"
                                                >Thức ăn cho Tôm</a
                                                >
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer--item footer--social">
                <div class="">
                    <div class="quality">
                        <img src="https://www.anovafeed.vn/Data/Sites/1/media/trangchu/ky-hieu-dathongbao.png"
                             alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer end -->


<!-- Modal form end -->
<script src="main.js"></script>
<script src="././assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
