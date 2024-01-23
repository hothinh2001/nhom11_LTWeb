<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 1/23/2024
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/paymentConfirm.css"/>
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
    <title>Thanh toán</title>
</head>
<body>
<%--start header--%>
<jsp:include page="webpage/include/header.jsp"/>
<%--end header--%>

<main class="main">
    <div class="main__menu">
        <form action="" class="form-info">
            <h2>Thông tin đặt hàng</h2>
            <div class="cart-info">
                <div class="line">
                    <div class="left">
                        <span>• Khách hàng:</span>
                    </div>
                    <div class="right">Hồ Thịnh</div>
                </div>
                <div class="line">
                    <div class="left">
                        <span>• Số điện thoại</span>
                    </div>
                    <div class="right">0986547851</div>
                </div>
                <div class="line">
                    <div class="left">
                        <span>• Địa chỉ nhận hàng</span>
                    </div>
                    <div class="right">Thủ Đức</div>
                </div>
                <div class="line">
                    <div class="left">
                        <span>• Tạm tính</span>
                    </div>
                    <div class="right">1.690.000vnđ</div>
                </div>
                <div class="line">
                    <div class="left">
                        <span>• Phí vận chuyển</span>
                    </div>
                    <div class="right">Miễn phí</div>
                </div>
                <div class="line">
                    <div class="left">
                        <span>• Tổng tiền</span>
                    </div>
                    <div class="right">1.690.000vnđ</div>
                </div>
            </div>
            <div class="cart-method">
                <h2>Phương thức thanh toán</h2>
                <div class="line">
                    <div class="left">
                        <img
                                src="https://file.hstatic.net/200000636033/file/pay_2d752907ae604f08ad89868b2a5554da.png"
                                alt=""
                        />
                    </div>
                    <div class="right">
                        <span>Thanh toán khi nhận hàng (COD)</span>
                    </div>
                </div>
            </div>
            <div class="form-total">
                <span class="title-total">Tổng tiền:</span>
                <span class="total-price">1.000.000vnđ</span>
            </div>
            <div class="form-btn">
                <button type="button" class="btn btn-primary">Đặt hàng ngay</button>
            </div>
        </form>
    </div>
</main>
</body>
</html>

