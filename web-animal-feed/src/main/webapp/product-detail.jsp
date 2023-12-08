<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.cart.Cart" %><%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 11/28/2023
  Time: 9:43 PM
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
            href="././assets/img/logo.jpg"
            type="image/x-icon"
    />
    <title>Shop Manager</title>
    <link rel="stylesheet" href="././assets/css/normalize.css"/>
    <link rel="stylesheet" href="././assets/css/base.css"/>
    <link rel="stylesheet" href="././assets/css/main&productList.css"/>
    <link rel="stylesheet" href="././assets/css/grid.css"/>
    <link rel="stylesheet" href="././assets/css/responsive.css"/>
    <link rel="stylesheet" href="assets/css/productDetail.css"/>
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
<jsp:include page="header.jsp"/>
<!-- Container product detail start -->

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
                    <a href="#" class="breadcrumb-item__link"> Danh mục một </a>
                    <i class="fa-solid fa-chevron-right"></i>
                </li>
                <li class="breadcrumb-item breadcrumb-item--active">
                    <a href="#" class="breadcrumb-item__link">
                        ${detail.getNameDetail()}</a
                    >
                </li>
            </ul>
        </div>

        <!-- Breadcrumb end -->

        <!-- Product detail start -->

        <div class="product-detail">
            <div class="product-title">
                <div class="product-name"><h3>${detail.getName()}</h3></div>
                <div class="product-describe"><h3>${detail.getNameDetail()}</h3>
                </div>
            </div>
            <div class="product-detail-wrapper row">
                <div class="col l-5 m-12 c-12 product-detail__img-wrapper">
                    <div class="product-detail__img">
                        <img
                                src="${detail.getUrlImage()}"
                                alt=""
                                class="product-detail__img-main"
                                id="main-image"
                        />
                    </div>
                </div>
                <div class="col l-7 m-12 c-12 product-detail__info-wrapper">
                    <div class="product-detail__info">
                        <div class="button-describe">
                            <button type="button" class="btn btn-danger btn-material">Thông tin nguyên liệu</button>
                            <button type="button" class="btn btn-danger btn-nutrition">Thông tin dinh dưỡng</button>
                            <button type="button" class="btn btn-danger btn-tutorial">Hướng dẫn sử dụng</button>

                        </div>
                        <div class="product-detail__describe description-material" style="display: none">
                            ${detail.getIngredients()}
                        </div>
                        <div class="product-detail__describe description-nutrition">
                            ${detail.getNutritionInfo()}
                        </div>
                        <div class="product-detail__describe description-tutorial" style="display: none">
                            ${detail.getUsageInstruction()}
                        </div>
                        <div class="product-detail__info-price">
                            <span class="product-detail__info-price-current"
                            >${detail.getPrice()}đ</span
                            >
                        </div>
                        <div class="product-detail__info-quantity">
                    <span class="product-detail__info-quantity-title"
                    >Số lượng:</span
                    >
                            <div class="product-detail__info-quantity-btn">
                      <span class="product-detail__info-quantity-btn-minus"
                      ><i class="fa-solid fa-minus"></i
                      ></span>
                                <input
                                        type="text"
                                        class="product-detail__info-quantity-btn-input"
                                        value="1"
                                />
                                <span class="product-detail__info-quantity-btn-plus"
                                ><i class="fa-solid fa-plus"></i
                                ></span>

                            </div>
                            <div class="product-detail__info-inventory">
                      <span class="product-detail__info-inventory-quantity">
                        Còn 100 sản phẩm
                      </span>
                            </div>
                        </div>

                        <div class="product-detail__info-cart-btn">
                            <button class="btn--cart__add">
                                <a href="add-cart?id=${detail.getId()}">
                                    <i class="fas fa-cart-plus"></i>
                                    Thêm vào giỏ hàng
                                </a>
                            </button>
                            <button class="btn--cart__buyNow">
                                <a href="./cart/index.html">
                                    Mua ngay
                                </a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-related">
            <div class="best__selling">
                <div class="best__selling--title">
                    <div class="title-item">
                        <h2>Sản phẩm liên quan</h2>
                        <div class="line"></div>
                    </div>
                    <a>Xem tất cả</a>
                </div>
                <div class="best__selling--content">
                    <div class="row sm-gutter product-item-wrapper">
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="./product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ga/c24s.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Con Cò C24S
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp cho gà đẻ cao sản
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >565.000đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">KONOVA</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="./product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ga/con-co-ai-cap.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Con Cò Ai cập
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp dùng cho gà đẻ Ai Cập
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >565.000đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">KONOVA</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="./product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ga/c21.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Con Cò C21
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn đậm đặc dạng bột cho gà đẻ
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >565.000đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">KONOVA</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="./product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ga/c24.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Con Cò C24
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp cho gà đẻ
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >565.000đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">KONOVA</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Breadcrumb end -->
<!-- Container product detail end  -->


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
<script src="././assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script src="./assets/js/productDetail.js"></script>
</body>
</html>
