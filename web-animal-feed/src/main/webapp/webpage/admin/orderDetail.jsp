<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Oder List</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/dashboard/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/Aorder.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
<input type="checkbox" id="menu-toggle">

<jsp:include page="../include/sideBar.jsp"/>

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
                    <div class="bg-img" style="background-image: url(../../admin/assets/images/profile/user-1.jpg)"></div>

                    <span class="las la-power-off"></span>
                    <span>Đăng xuất</span>
                </div>
            </div>
        </div>

    </header>
    <main>
        <div class="page-header">
            <h1>Chi tiết đơn hàng</h1>
            <small>Home /Chi tiết đơn hàng</small>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                    onclick="redirectToProductPage()">
                Thêm sản phẩm
            </button>
        </div>

        <div class="page-content">
            <div class="content-title">
                <div class="content-title-item content-title-stt">ID</div>
                <div class="content-title-item content-title-image">Hình ảnh</div>
                <div class="content-title-item content-title-name">Tên sản phẩm</div>
                <div class="content-title-item content-title-price">Số lượng;</div>
                <div class="content-title-item content-title-category">Tổng</div>


            </div>
            <hr style="margin: 0; height: 2px">
            <div class="content-title">
                <div class="content-title-item content-title-stt">#009</div>
                <div class="content-title-item content-title-image">
                    <img src="../../admin/assets/images/ga/c21.png" alt="">
                </div>
                <div class="content-title-item content-title-name">Con Cò C21</div>
                <div class="content-title-item content-title-price">4</div>
                <div class="content-title-item content-title-category">4000.00</div>


            </div>
        </div>

    </main>
</div>

</body>
</html>
