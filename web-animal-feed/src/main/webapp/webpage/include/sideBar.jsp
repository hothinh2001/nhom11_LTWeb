<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="sidebar">
    <div class="side-header">
        <h3>M<span>odern</span></h3>
    </div>

    <div class="side-content">
        <div class="profile">
            <div class="">
                <img alt='TravelerWP'
                     class='avatar avatar-50 photo profile-img bg-img' height='50' width='50' loading='lazy'
                     decoding='async'/>
            </div>
            <h4 class="user-name">TRAN NGOC BAO TRAN</h4>
            <span class="user-role"></span>
        </div>

        <div class="side-menu">
            <ul>
                <li>
                    <a href="dashboard">
                        <span class="las la-home"></span>
                        <small>Dashboard</small>
                    </a>
                </li>
                <li>
                    <a href="manager">
                        <span class="las la-clipboard-list"></span>
                        <small>Product List</small>
                    </a>
                </li>
                <li>
                    <a href="../order/orderList.html">
                        <span class="las la-shopping-cart"></span>
                        <small>Order List</small>
                    </a>
                </li>
                <li>
                    <a href="../category/index.html">
                        <span class="las la-clipboard-list"></span>
                        <small>Danh mục</small>
                    </a>
                </li>
                <li>
                    <a href="managerBrand">
                        <img class="img-brand" src="${pageContext.request.contextPath}/assets/img/logoBrand.png" alt="">
                        <small>Thương hiệu</small>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>