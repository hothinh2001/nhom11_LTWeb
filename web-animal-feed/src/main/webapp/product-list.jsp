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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/productList.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/normalize.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main&productList.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/grid.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css"/>
    <link rel="stylesheet" href=".${pageContext.request.contextPath}/assets/css/responsive.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
            rel="stylesheet"
    />
    <link
            href="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css"
            rel="stylesheet"

    />
</head>
<body>
<div class="app">
    <!-- Header start -->
    <jsp:include page="header.jsp"/>
    <!-- Header end -->
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

                        <div class="col l-10 m-12 c-12">

                            <div class="list-group">
                                <div class="list-group-item category">
                                    <span><i class="fa-solid fa-list"></i></span>
                                    Danh mục
                                </div>
                                <c:forEach items="${listCate}" var="c">
                                    <a href="#"
                                       class="list-group-item list-group-item-action cate-item">${c.getNameCate()}</a>
                                </c:forEach>
                            </div>


                            <div class="list-group">
                                <div class="list-group-item category">
                                    <span><i class="fa-solid fa-tag"></i></span>
                                    Thương hiệu
                                </div>
                                <c:forEach items="${listB}" var="b">
                                    <a href="#"
                                       class="list-group-item list-group-item-action cate-item">${b.getNameBrand()}</a>
                                </c:forEach>
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
                                                    <img src="${product.getUrlImage()}" alt=""></div>
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


<script src="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>


</body>
</html>