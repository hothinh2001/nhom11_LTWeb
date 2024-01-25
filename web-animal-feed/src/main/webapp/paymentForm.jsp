<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 1/23/2024
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/paymentForm.css"/>
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
    <title>Thanh Toán</title>
</head>
<body>
<%--start header--%>
<jsp:include page="webpage/include/header.jsp"/>
<%--end header--%>
<main class="main">
    <div class="main__menu">
<%--        action là cái url controller xử lý 2 cá này là t tính toán sẳn rồi truyền qua từ serlet bên kia--%>
        <form action="${pageContext.request.contextPath}/checkout-confirm?shippingFee=${shippingFee}&totalCartPrice=${totalCartPrice}" method="post"
              class="form-info">
            <h3>Thông tin khách mua hàng</h3>
            <div class="form-gender">
                <div class="form-check form-check-inline">
                    <input
                            class="form-check-input"
                            type="radio"

                            name="gender"
                            id="gender"
                            value="Nam"
                    ${sessionScope.acc.gender == "Nam" ? "checked" : ""}
                    />
                    <label class="form-check-label" for="gender">Anh</label>
                </div>
                <div class="form-check form-check-inline">
                    <input
                            class="form-check-input"
                            type="radio"
                            name="inlineRadioOptions"
                            id="inlineRadio2"
                            value="Nữ"
                    ${sessionScope.acc.gender == "Nu" ? "checked" : ""}

                    />
                    <label class="form-check-label" for="inlineRadio2">Chị</label>
                </div>
            </div>
            <div class="form-namePhone">
                <div class="form-floating mb-3 form-name">
                    <input
                            type="text"
                            class="form-control"
                            id="payment-username"
                    <%--                            trong cái input của cái fỏm phải có name mới truyền paramêtr đc--%>
                            name="username"
                            value="${sessionScope.acc.name}"
                    />
                    <label for="payment-username">
                        Nhập Họ và Tên
                    </label>
                </div>
                <div class="form-floating mb-3 form-phone">
                    <input
                            type="text"
                            class="form-control"
                            id="payment-phone"
                            name="phone"
                            value="${sessionScope.acc.phone}"
                    />
                    <label for="payment-phone">Nhập số điện thoại</label>
                </div>
            </div>
            <h3>Địa chỉ nhận hàng</h3>
            <div class="form-address">
                <div class="form-floating mb-3">
                    <input
                            type="text"
                            class="form-control"
                            id="payment-address"
                            name="address"
                            value="${sessionScope.acc.address}"
                    />
                    <label for="payment-address">Nhập địa chỉ</label>
                </div>
            </div>
            <div class="form-fee">
                <span class="title-fee">Phí vận chuyển</span>
                <span class="transport-fee">${shippingFee}vnđ</span>
            </div>
            <div class="form-total">
                <span class="title-total">Tổng tiền:</span>
                <span class="total-price">${totalCartPrice}</span>
            </div>
            <div class="form-btn">
<%--                truyền tham số bằng form thì cái nút phải là type submit--%>
                <button type="submit" class="btn btn-primary">
                    Thanh toán
                </button>
            </div>
        </form>
    </div>
</main>
</body>
</html>
