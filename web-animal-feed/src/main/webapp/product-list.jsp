
<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 11/28/2023
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- favicon -->
    <link
            rel="shortcut icon"
            href="./assets/img/logo.jpg"
            type="image/x-icon"
    />
    <title>Product List</title>
    <link rel="stylesheet" href="./assets/css/productList.css"/>
    <link rel="stylesheet" href="././assets/css/normalize.css"/>
    <link rel="stylesheet" href="././assets/css/base.css"/>
    <link rel="stylesheet" href="././assets/css/main&productList.css"/>
    <link rel="stylesheet" href="././assets/css/grid.css"/>
    <link rel="stylesheet" href="././assets/css/responsive.css"/>
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
<div class="app">
    <!-- Header start -->
    <header class="header">
        <div class="grid wide">
            <nav class="navbar hide-on-mobile-tablet">
                <ul class="navbar__list">
                </ul>
                <ul class="navbar__list">
                    <li
                            class="navbar__item navbar__item--strong navbar__item--separate js-register"
                    >
                        <a href="././pages/register/index.html"> Đăng ký</a>
                    </li>
                    <li class="navbar__item navbar__item--strong js-login">
                        <a href="././pages/login/index.html"> Đăng nhập </a>
                    </li>
                    <li class="navbar__item navbar__user">
                        <img
                                src="././assets/img/user_avatar.png"
                                alt="User"
                                class="navbar__user-img"
                        />
                        <span class="navbar__user-name">Tran Ngoc Bao Tran</span>
                        <ul class="navbar__user-menu">
                            <li class="navbar__user-item">
                                <a href="../user/index.html" class="navbar__user-link">Tài khoản của tôi</a>
                            </li>
                            <li class="navbar__user-item">
                                <a href="" class="navbar__user-link">Đơn mua</a>
                            </li>
                            <li class="navbar__user-item navbar__user-item-separate">
                                <a href="" class="navbar__user-link">Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="header-with-search">
                <div class="header__logo hide-on-tablet">
                    <div class="header__logo-container">
                        <div class="logo-holder logo-4">
                            <a href="../home/index.html" class="header__logo-link">
                                <img src="././assets/img/logo.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <input
                        type="checkbox"
                        hidden
                        id="mobile-search-checkbox"
                        class="header__search-checkbox"
                />
                <!--            <div class="header__search">-->
                <!--                <div class="header__search-input-wrapper">-->
                <!--                    <input-->
                <!--                            type="text"-->
                <!--                            class="header__search-input"-->
                <!--                            placeholder="Nhập để tìm kiếm sản phẩm"-->
                <!--                    />-->
                <!--                    <div class="header__search-history">-->
                <!--                        <h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>-->
                <!--                        <ul class="header__search-history-list">-->
                <!--                            <li class="header__search-history-item">-->
                <!--                                <a href="" class="header__search-history-link">Thức ăn cho heo thịt</a>-->
                <!--                            </li>-->
                <!--                            <li class="header__search-history-item">-->
                <!--                                <a href="" class="header__search-history-link">thức ăn cho gà đẻ trứng</a>-->
                <!--                            </li>-->
                <!--                            <li class="header__search-history-item">-->
                <!--                                <a href="" class="header__search-history-link">thức ăn cho cá</a>-->
                <!--                            </li>-->
                <!--                        </ul>-->
                <!--                    </div>-->
                <!--                </div>-->

                <!--                <button class="header__search-btn">-->
                <!--                    <i-->
                <!--                            class="header__search-btn-icon fa-solid fa-magnifying-glass"-->
                <!--                    ></i>-->
                <!--                </button>-->
                <!--            </div>-->

                <!--            navbar header-->
                <div class="header__navbar">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="container-fluid">
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                                <!--                pc and tablet-->
                                <div class="header__navbar-nav">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <li class="nav-item">
                                            <a class="nav-link nav-link-sm active" aria-current="page"
                                               href="../home/index.html">Trang chủ</a>
                                        </li>
                                        <li class="nav-item dropdown header__cart-wrapper">
                                            <a class="nav-link nav-link-sm dropdown-toggle"
                                               href="../product-list/index.html" id="productDropdown"
                                               role="button"
                                            >
                                                Thức ăn cho heo
                                            </a>
                                            <div class="header__cart-list-product">
                                                <!-- Cart index product start -->
                                                <div class="header__cart-list-product-type">
                                                    <div class="header__cart-list-product-name">
                                                        <a href="#" class="header__cart-list-product-link">
                                                            Thức ăn cho Heo
                                                        </a>
                                                        <hr width="30%" align="left"/>
                                                        <ul class="header__cart-list-product-item">
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Heo con</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Heo thịt</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Heo nái</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Heo đực</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- Cart index product start -->
                                            </div>
                                        </li>
                                        <li class="nav-item dropdown header__cart-wrapper">
                                            <a class="nav-link nav-link-sm dropdown-toggle"
                                               href="../product-list/index.html" id="productDropdown2"
                                               role="button"
                                            >
                                                Thức ăn cho Cá
                                            </a>
                                            <div class="header__cart-list-product">
                                                <!-- Cart index product start -->
                                                <div class="header__cart-list-product-type">
                                                    <div class="header__cart-list-product-name">
                                                        <a href="#" class="header__cart-list-product-link">
                                                            Thức ăn cho Cá
                                                        </a>
                                                        <hr width="30%" align="left"/>
                                                        <ul class="header__cart-list-product-item">
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Cá có vảy</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Cá tra, Cá Basa</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- Cart index product start -->
                                            </div>
                                        </li>
                                        <li class="nav-item dropdown header__cart-wrapper">
                                            <a class="nav-link nav-link-sm dropdown-toggle"
                                               href="../product-list/index.html" id="productDropdown3"
                                               role="button"
                                            >
                                                Thức ăn Gia Cầm
                                            </a>
                                            <div class="header__cart-list-product">
                                                <!-- Cart index product start -->
                                                <div class="header__cart-list-product-type">
                                                    <div class="header__cart-list-product-name">
                                                        <a href="#" class="header__cart-list-product-link">
                                                            Thức ăn Gia cầm
                                                        </a>
                                                        <hr width="30%" align="left"/>
                                                        <ul class="header__cart-list-product-item">
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Gà thịt</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#"> Gà đẻ</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#"> Gà ta, Gà tàu</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#">Gà thịt thả vườn</a>
                                                            </li>
                                                            <li class="header__cart-item-product">
                                                                <a href="#"> Gà giống bố mẹ</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- Cart index product start -->
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link nav-link-sm" href="../Contact/index.html">Liên hệ</a>
                                        </li>
                                    </ul>
                                </div>
                                <form class="d-flex">
                                    <div class="header__search">
                                        <div class="header__search-input-wrapper">
                                            <input
                                                    type="text"
                                                    class="header__search-input"
                                                    placeholder="Tìm kiếm..."
                                            />
                                            <div class="header__search-history">
                                                <h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
                                                <ul class="header__search-history-list">
                                                    <li class="header__search-history-item">
                                                        <a href="" class="header__search-history-link">Thức ăn cho heo
                                                            thịt</a>
                                                    </li>
                                                    <li class="header__search-history-item">
                                                        <a href="" class="header__search-history-link">thức ăn cho gà đẻ
                                                            trứng</a>
                                                    </li>
                                                    <li class="header__search-history-item">
                                                        <a href="" class="header__search-history-link">thức ăn cho
                                                            cá</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <button class="header__search-btn">
                                            <i
                                                    class="header__search-btn-icon fa-solid fa-magnifying-glass"
                                            ></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </nav>
                </div>
                <!-- Header Cart start -->
                <div class="header__cart">
                    <div class="header__cart-wrapper">
                        <i class="header__cart-icon fas fa-shopping-cart"></i>
                        <span class="header__cart-notice">3</span>
                        <!-- No item in cart header__cart-list--nocart -->
                        <div class="header__cart-list">
                            <img
                                    src="././assets/img/no_cart.png"
                                    alt=""
                                    class="header__cart-nocart-img"
                            />
                            <span class="header__cart-nocart-msg">Chưa có sản phẩm</span>

                            <!-- Cart index product start -->
                            <h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
                            <ul class="header__cart-list-item">
                                <li class="header__cart-item">
                                    <img
                                            src="././assets/img/ga/c24s.png"
                                            alt=""
                                            class="header__cart-img"
                                    />
                                    <div class="header__cart-item-info">
                                        <div class="header__cart-item-head">
                                            <h5 class="header__cart-item-name">
                                                Con Cò 00-09
                                            </h5>
                                            <div class="header__cart-item-price-wrap">
                                                <span class="header__cart-item-price">550.000đ</span>
                                                <span class="header__cart-item-multiply">x</span>
                                                <span class="header__cart-item-qnt">1</span>
                                            </div>
                                        </div>
                                        <div class="header__cart-item-body">
                        <span class="header__cart-item-description"
                        ></span
                        >
                                            <span class="header__cart-item-remove">Xóa</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="header__cart-item">
                                    <img
                                            src="././assets/img/ga/c24.png"
                                            alt=""
                                            class="header__cart-img"
                                    />
                                    <div class="header__cart-item-info">
                                        <div class="header__cart-item-head">
                                            <h5 class="header__cart-item-name">
                                                Con Cò C24
                                            </h5>
                                            <div class="header__cart-item-price-wrap">
                                                <span class="header__cart-item-price">550.000đ</span>
                                                <span class="header__cart-item-multiply">x</span>
                                                <span class="header__cart-item-qnt">1</span>
                                            </div>
                                        </div>
                                        <div class="header__cart-item-body">
                        <span class="header__cart-item-description"
                        ></span
                        >
                                            <span class="header__cart-item-remove">Xóa</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="header__cart-item">
                                    <img
                                            src="././assets/img/ga/c24s.png"
                                            alt=""
                                            class="header__cart-img"
                                    />
                                    <div class="header__cart-item-info">
                                        <div class="header__cart-item-head">
                                            <h5 class="header__cart-item-name">
                                                Con Cò Ai cập
                                            </h5>
                                            <div class="header__cart-item-price-wrap">
                                                <span class="header__cart-item-price">550.000đ</span>
                                                <span class="header__cart-item-multiply">x</span>
                                                <span class="header__cart-item-qnt">1</span>
                                            </div>
                                        </div>
                                        <div class="header__cart-item-body">
                        <span class="header__cart-item-description"
                        ></span
                        >
                                            <span class="header__cart-item-remove">Xóa</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <a
                                    href="../cart/index.html"
                                    class="header__cart-view-cart btn-base btn--primary"
                            >
                                Xem giỏ hàng
                            </a>
                            <!-- Cart index product start -->
                        </div>
                    </div>
                </div>
                <!-- Header Cart end -->
            </div>
        </div>
    </header>

    <div class="app__container">
        <div class="grid wide">
            <!-- Breadcrumb start -->
            <div class="breadcrumb-wrapper">
                <ul class="breadcrumb-content">
                    <li class="breadcrumb-item">
                        <a href="#" class="breadcrumb-item__link"> Trang chủ </a>
                        <i class="fa-solid fa-chevron-right"></i>
                    </li>

                    <li class="breadcrumb-item">
                        <a href="#" class="breadcrumb-item__link"> Danh sách sản phẩm </a>
                        <i class="fa-solid fa-chevron-right"></i>
                    </li>
                    <li class="breadcrumb-item breadcrumb-item--active">
                        <a href="#" class="breadcrumb-item__link">
                            Thức ăn cho heo</a
                        >
                    </li>
                </ul>
            </div>

            <!-- Header end -->
            <!-- Container product detail start -->
            <div class="app__container">
                <div class="grid wide">
                    <div class="row sm-gutter app__content">
                        <div class="col l-2 m-0 c-0">
                            <div class="cate-item">
                                <a href="#">
                                    <img src="././assets/img/heo-icon.png.webp" alt=""/>
                                    Thức ăn cho heo
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="#">
                                    <img src="././assets/img/ga-icon.png.webp" alt=""
                                    />
                                    Thức ăn Gia cầm
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="#">
                                    <img src="././assets/img/icon-ca-light.png.webp" alt=""/>
                                    Thức ăn cho Cá
                                </a>
                            </div>
                            <div class="cate-item">
                                <a href="#">
                                    <img src="././assets/img/icon-tom-light.png.webp" alt=""/>
                                    Thức ăn cho Tôm
                                </a>
                            </div>
                        </div>
                        <div class="col l-10 m-12 c-12">
                            <div class="home-filter hide-on-mobile-tablet">
                                <button class="home-filter__btn btn">
                                    <p style="font-size: 16px;">Phổ Biến</p>
                                </button>
                                <button class="home-filter__btn btn btn--primary">
                                    <p style="font-size: 16px;">Mới Nhất</p>

                                </button>
                                <!--                                <button class="home-filter__btn btn"> <p style="font-size: 16px;">Bán Chạy</p></button>-->
                                <div class="select-input">
                                    <span class="select-input__label">Thương hiệu</span>
                                    <i class="select-input__icon fas fa-chevron-down"></i>
                                    <!-- List option -->
                                    <ul class="select__input-list">
                                        <li class="select__input-item">
                                            <a href="" class="select__input-link"
                                            >BigBoss</a
                                            >
                                        </li>
                                        <li class="select__input-item">
                                            <a href="" class="select__input-link"
                                            >Con Cò</a
                                            >
                                        </li>
                                        <li class="select__input-item">
                                            <a href="" class="select__input-link"
                                            >HPfeed</a
                                            >
                                        </li>
                                    </ul>
                                </div>

                                <!--                                <button class="home-filter__btn btn"><p style="font-size: 16px;">Bán Chạy</p></button>-->

                                <div class="select-input">
                                    <span class="select-input__label">Giá</span>
                                    <i class="select-input__icon fas fa-chevron-down"></i>
                                    <!-- List option -->
                                    <ul class="select__input-list">
                                        <li class="select__input-item">
                                            <a href="" class="select__input-link"
                                            >Giá: Thấp đến cao</a
                                            >
                                        </li>
                                        <li class="select__input-item">
                                            <a href="" class="select__input-link"
                                            >Giá: Cao đến thấp</a
                                            >
                                        </li>
                                    </ul>
                                </div>
                                <div class="home-filter__page">
                                         <span class="home-filter__page-num">
                                         <span class="home-filter__page-current">1</span>/14
                                         </span>
                                    <div class="home-filter__page-control">
                                        <a
                                                href=""
                                                class="home-filter__page-btn home-filter__page-btn--disabled"
                                        >
                                            <i class="home-filter__page-icon fas fa-chevron-left"></i>
                                        </a>
                                        <a href="" class="home-filter__page-btn">
                                            <i
                                                    class="home-filter__page-icon fas fa-chevron-right"
                                            ></i>
                                        </a>
                                    </div>
                                </div>
                            </div>


                            <div class="best__selling--content">
                                <div class="row sm-gutter product-item-wrapper">
                                    <c:forEach items="${listP}" var="product">
                                        <div class="col l-2-4 c-6">
                                            <!-- Product Item -->
                                            <a
                                                    class="product-item"
                                                    href="${pageContext.request.contextPath}/detail?pid=${product.id}"
                                            >
                                                <div class="product-item__img">
                                                    <img src="././assets/img/heo/1.png" alt=""></div>
                                                <h4 class="product-item__title">
                                                        ${product.getName()}
                                                </h4>
                                                <h4 class="product-item__name">
                                                        ${product.getNameDetail()}
                                                </h4>
                                                <div class="product-item__price">
                                                    <span class="product-item__price-current">${product.getPrice()}đ</span>
                                                </div>
                                                <div class="product-item__action">
                                                    <!-- product-item__like--liked -->
                                                    <span class="product-item__like"> </span>
                                                    <div class="product-item__rating"></div>
                                                    <div class="product-item__sold"></div>
                                                </div>
                                                <div class="product-item__origin">
                                                    <span class="product-item__brand">Con Cò</span>
                                                </div>
                                                <div class="product-item__favourite"></div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <button type="button" class="btn btn-primary btn-load-more">Xem thêm</button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Container end -->
<!--footer star-->

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


<script src="././assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>


</body>
</html>