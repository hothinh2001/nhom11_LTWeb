<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 1/23/2024
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <div class="header-content">
        <label>
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
                <div class="avatar">
                    <img src="${sessionScope.acc.avatar}" alt="">
                </div>

                <c:if test="${sessionScope.acc != null}">
                <span class="las la-power-off"></span>
                <a href="logOut">
                    <span>Đăng xuất</span>
                </a>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <span></span>
                </c:if>
            </div>
        </div>
    </div>
</header>
