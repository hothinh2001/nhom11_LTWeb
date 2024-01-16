<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.service.CartService" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.impl.CartServiceImpl" %>

<%
    CartService cart = (CartService) session.getAttribute("cart");
    if (cart == null) cart = new CartServiceImpl();

%>

<!-- Header start -->
<header class="header">
    <div class="grid wide">
        <nav class="navbar hide-on-mobile-tablet">
            <ul class="navbar__list">
            </ul>
            <ul class="navbar__list">
                <c:if test="${sessionScope.acc == null}">
                    <li
                            class="navbar__item navbar__item--strong navbar__item--separate js-register"
                    >
                        <a href="Signup.jsp"> Đăng ký</a>
                    </li>
                    <li class="navbar__item navbar__item--strong js-login">
                        <a href="Login.jsp"> Đăng nhập </a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc !=null}">
                    <li class="navbar__item navbar__user">
                        <img
                                src="${sessionScope.acc.avatar}"
                                alt="User"
                                class="navbar__user-img"
                        />
                        <span class="navbar__user-name">Xin Chao ${sessionScope.acc.name} </span>
                        <ul class="navbar__user-menu">
                            <li class="navbar__user-item">
                                <a href="./user/index.html" class="navbar__user-link">Tài khoản của tôi</a>
                            </li>
                            <li class="navbar__user-item">
                                <a href="" class="navbar__user-link">Đơn mua</a>
                            </li>

                            <li class="navbar__user-item navbar__user-item-separate">
                                <a href="logOut" class="navbar__user-link">Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </nav>
        <div class="header-with-search">
            <div class="header__logo hide-on-tablet">
                <div class="header__logo-container">
                    <div class="logo-holder logo-4">
                        <a href="home" class="header__logo-link">
                            <img src="${pageContext.request.contextPath}/assets/img/logo.jpg" alt="">
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
                                           href="home">Trang chủ</a>
                                    </li>
                                    <li class="nav-item dropdown header__cart-wrapper">
                                        <a class="nav-link nav-link-sm dropdown-toggle"
                                           href="./product-list/index.html" id="productDropdown"
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
                                           href="./product-list/index.html" id="productDropdown2"
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
                                           href="./product-list/index.html" id="productDropdown3"
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
                                        <a class="nav-link nav-link-sm" href="">Liên hệ</a>
                                    </li>
                                </ul>
                            </div>
                            <form class="d-flex" method="post" action="searchName">
                                <div class="header__search">
                                    <div class="header__search-input-wrapper">
                                        <input
                                                name="txt"
                                                value="${txtS}"
                                                class="header__search-input"
                                                placeholder="Tìm kiếm.."
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
                                                    <a href="" class="header__search-history-link">thức ăn cho cá</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <button class="header__search-btn" value="searchName" type="submit">
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
                    <span class="header__cart-notice"> <%= cart.getTotalQuantity() %> </span>
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
                                        src="././assets/img/ga/ga-sieu-um.png"
                                        alt=""
                                        class="header__cart-img"
                                />
                                <div class="header__cart-item-info">
                                    <div class="header__cart-item-head">
                                        <h5 class="header__cart-item-name">
                                            Con gà siêu úm
                                        </h5>
                                        <div class="header__cart-item-price-wrap">
                                            <span class="header__cart-item-price">550000đ</span>
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
                                href="${pageContext.request.contextPath}/webpage/cart/cart.jsp"
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
<!-- Header end -->

