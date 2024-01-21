<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 11/28/2023
  Time: 9:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link
            rel="shortcut icon"
            href="././assets/img/logo.jpg"
            type="image/x-icon"
    />
    <title>Home</title>
    <link rel="stylesheet" href="././assets/css/normalize.css"/>
    <link rel="stylesheet" href="././assets/css/base.css"/>
    <link rel="stylesheet" href="././assets/css/main&productList.css"/>
    <link rel="stylesheet" href="././assets/css/grid.css"/>
    <link rel="stylesheet" href="././assets/css/responsive.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link rel="stylesheet" href="./assets/css/home.css"/>
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
<jsp:include page="webpage/include/header.jsp"/>
<!-- Header end -->
<div class="app__container">
    <div class="grid wide">
        <div class="row sm-gutter app__content">
            <div class="banner">
                <div class="slide">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <c:forEach var="slide" items="${listSS}" varStatus="loop">
                                <button type="button" data-bs-target="#carouselExampleIndicators"
                                        data-bs-slide-to="${loop.index}"<c:if
                                        test="${loop.first}"> class="active"</c:if>
                                        aria-label="Slide ${loop.index + 1}"></button>
                            </c:forEach>
                        </div>
                        <div class="carousel-inner">
                            <c:forEach var="slide" items="${listSS}" varStatus="loop">
                                <div class="carousel-item<c:if test="${loop.first}"> active</c:if>">
                                    <img src="${slide.getUrlImage()}" class="d-block w-100" alt="...">
                                </div>
                            </c:forEach>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                                data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>

                <div class="category">
                    <c:forEach var="category" items="${listCate}">
                        <div class="cate-item">
                            <a href="product-list">
                                <img src="${category.getIconCate()}" alt=""/>
                                    ${category.getNameCate()}
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!-- san pham ba chay -->
            <div class="best__selling">
                <div class="best__selling--title">
                    <div class="title-item">
                        <h2>Sản phẩm cho Heo bán chạy</h2>
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
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/heo/1.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Con Cò 00-09
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn tập ăn cho heo con từ 7 ngày tuổi - 9kg
                                </h4>
                                <div class="product-item__price">
                                    <span class="product-item__price-current">550.00đ</span>
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
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/heo/2.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Porcy 00-09
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn tập ăn cho heo con từ 7 ngày tuổi - 9kg
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/heo/3.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Porcy 09-20
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp cho heo con từ 9kg - 20kg
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/heo/4.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Con Cò 09-20
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp cho heo con từ 9kg - 20kg
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                    </div>
                </div>
            </div>
            <div class="best__selling">
                <div class="best__selling--title">
                    <div class="title-item">
                        <h2>Sản phẩm cho Cá bán chạy</h2>
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
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ca/ca_c5001.png" alt=""></div>
                                <h4 class="product-item__title">
                                    C5001
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp dùng cho cá BASA, TRA Giai đoạn nhỏ hơn 1 gram
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ca/ca-c5002.png" alt=""></div>
                                <h4 class="product-item__title">
                                    C5002
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp dùng cho cá BASA, TRA Giai đọan từ 1 - 4 gram
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ca/ca-c8001.png" alt=""></div>
                                <h4 class="product-item__title">
                                    C8001
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp dùng cho cá RÔ PHI, ĐIÊU HỒNG Giai đoạn cá bột
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ca/ca-c8002.png" alt=""></div>
                                <h4 class="product-item__title">
                                    C8002
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp dùng cho cá RÔ PHI, ĐIÊU HỒNG Giai đoạn cá nhỏ hơn 5 gram
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
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
                    </div>
                </div>
            </div>
            <div class="best__selling">
                <div class="best__selling--title">
                    <div class="title-item">
                        <h2>Sản phẩm Gia cầm bán chạy</h2>
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
                                    href="../product-detail/index.html"
                            >
                                <div class="product-item__img">
                                    <img src="././assets/img/ga/ga-sieu-um.png" alt=""></div>
                                <h4 class="product-item__title">
                                    Bio-zeem Siêu úm
                                </h4>
                                <h4 class="product-item__name">
                                    Thức ăn hỗn hợp cho Gà thịt Siêu úm từ 01 - 07 ngày tuổi
                                </h4>
                                <div class="product-item__price">
                      <span class="product-item__price-current"
                      >550.00đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">CON CÒ</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
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
                      >550.00đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">CON CÒ</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
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
                      >550.00đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">CON CÒ</span>
                                </div>
                                <div class="product-item__favourite"></div>
                            </a>
                        </div>
                        <div class="col l-2-4 m-4 c-6">
                            <!-- Product Item -->
                            <a
                                    class="product-item"
                                    href="../product-detail/index.html"
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
                      >550.00đ</span
                      >
                                </div>
                                <div class="product-item__action">
                                    <!-- product-item__like--liked -->
                                    <span class="product-item__like"> </span>
                                    <div class="product-item__rating"></div>
                                    <div class="product-item__sold"></div>
                                </div>
                                <div class="product-item__origin">
                                    <span class="product-item__brand">CON CÒ</span>
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

