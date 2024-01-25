<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.dao.UserDao" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Users" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/AproductList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/managerUser.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/headerAdmin.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <title>Quản lý khách hàng</title>
</head>
<body>


<div class="main-content">

    <jsp:include page="../include/sideBar.jsp"/>

    <jsp:include page="headerAdmin.jsp"/>


    <main>
        <div class="page-header">
            <h1>Danh sách Khách hàng</h1>
            <small>Home / Danh sách Khách hàng</small>
        </div>


        <div class="page-content">
            <div class="content-title">
                <div class="content-title-item content-title-stt">STT</div>
                <div class="content-title-item content-title-name">Tên khách hàng</div>
                <div class="content-title-item content-title-email">Email</div>
                <div class="content-title-item content-title-phone">Số điện thoại</div>
                <div class="content-title-item content-title-role">Phân quyền</div>
                <div class="content-title-item content-title-edit">Thao tác</div>
                <div class="content-title-item content-title-delete">Xóa</div>
            </div>
            <hr style="margin: 0; height: 2px">
            <c:forEach items="${listU}" var="u" varStatus="loop">
            <div class="content-title">
                <div class="content-title-item content-title-stt">${loop.index + 1}</div>
                <div class="content-title-item content-title-name">${u.getName()}</div>
                <div class="content-title-item content-title-email">${u.getEmail()}</div>
                <div class="content-title-item content-title-phone">${u.getPhone()}</div>
                <div class="content-title-item content-title-role">${u.getRole().getNameRole()}</div>
                <div class="content-title-item content-title-edit">
                    <a href="loadUserAdmin?uid=${u.getId()}">
                        <span class="las la-edit"></span>
                    </a>
                </div>
                <div class="content-title-item content-title-delete">
                    <a href="#">
                        <button id="deleteButton" value="delete" type="button" class="btn btn-danger"
                                data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            <span class="las la-trash"></span>
                        </button>
                    </a>
                </div>
            </div>
            </c:forEach>

    </main>

</div>
<script src="../../assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
<script>
    function redirectToProductPage() {
        window.location.href = "webpage/admin/addProduct.jsp";
    }
</script>

</body>
</html>
