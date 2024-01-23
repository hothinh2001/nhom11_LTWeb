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
        <form action="" class="form-info">
            <h3>Thông tin khách mua hàng</h3>
            <div class="form-gender">
                <div class="form-check form-check-inline">
                    <input
                            class="form-check-input"
                            type="radio"
                            name="inlineRadioOptions"
                            id="inlineRadio1"
                            value="option1"
                    />
                    <label class="form-check-label" for="inlineRadio1">Anh</label>
                </div>
                <div class="form-check form-check-inline">
                    <input
                            class="form-check-input"
                            type="radio"
                            name="inlineRadioOptions"
                            id="inlineRadio2"
                            value="option2"
                    />
                    <label class="form-check-label" for="inlineRadio2">Chị</label>
                </div>
            </div>
            <div class="form-namePhone">
                <div class="form-floating mb-3 form-name">
                    <input
                            type="text"
                            class="form-control"
                            id="floatingInput"
                            placeholder="name@example.com"
                    />
                    <label for="floatingInput">Nhập Họ và Tên</label>
                </div>
                <div class="form-floating mb-3 form-phone">
                    <input
                            type="text"
                            class="form-control"
                            id="floatingInput2"
                            placeholder="name@example.com"
                    />
                    <label for="floatingInput2">Nhập số điện thoại</label>
                </div>
            </div>
            <h3>Địa chỉ nhận hàng</h3>
            <div class="form-address">
                <div class="form-floating mb-3">
                    <input
                            type="text"
                            class="form-control"
                            id="floatingInput3"
                            placeholder="name@example.com"
                    />
                    <label for="floatingInput3">Nhập địa chỉ</label>
                </div>
            </div>
            <div class="form-fee">
                <span class="title-fee">Phí vận chuyển</span>
                <span class="transport-fee">30.000vnđ</span>
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
