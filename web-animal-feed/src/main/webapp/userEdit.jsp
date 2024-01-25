<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 1/23/2024
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa thông tin cá nhân</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/normalize.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main&productList.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/grid.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user.css"/>
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
</head>
<body>
<!-- Header start -->
<jsp:include page="webpage/include/header.jsp"/>
<!-- Header end -->
<div id="wrapper">
    <form action="${pageContext.request.contextPath}/editUser?uid=${user.id}" id="form-login" method="post"
          enctype="multipart/form-data">
        <h1 class="form-heading">Thông tin chỉnh sửa</h1>
        <div class="form-content">
            <div class="form-info">
                <div class="form-group">
                    <i class="far fa-user"></i>
                    <input type="text" class="form-input" name="name" value="${user.name}"/>
                </div>

                <div class="form-group">
                    <label for="datepicker">Ngày sinh:</label>
                    <input value="${user.birthdate}" type="date" id="datepicker" name="birthday"/>
                </div>

                <div class="form-group" style="width: 100%;border-bottom:none">
                    <label for="gender" style="width: 80px">Giới tính</label>
                    <select id="gender" name="gender"
                            style="width: 100%; font-size: 16px; padding: 6.5px 10px">
                        <option>${user.gender}</option>
                        <option value="Nam">Nam</option>
                        <option value="Nu">Nữ</option>
                        <option value="Khac">Khác</option>
                    </select>

                </div>

                <div class="form-group">
                    <i class="fas fa-address-card"></i>
                    <input value="${user.address}" type="text" class="form-input" name="address"
                           placeholder="Địa chỉ "/>
                </div>

                <div class="form-group">
                    <i class="fas fa-envelope-open"></i>
                    <input value="${user.email}" type="email" class="form-input" name="email" placeholder="Email"/>
                </div>
                <div class="form-group">
                    <i class="fas fa-phone"></i>
                    <input value="${user.phone}" type="number" class="form-input" name="phone"
                           placeholder="Số điện thoại"/>
                </div>
                <div class="form-group">
                    <i class="fas fa-phone"></i>
                    <input value="${user.avatar}" type="url" class="form-input" name="avatar"
                           placeholder="Đường link của ảnh"/>
                </div>
                <div class="btn-confirm">
                    <button type="submit" class="form-submit" value="editUser">
                        Cập Nhật
                    </button>
                </div>
            </div>
            <div class="form-avatar">
                <div class="picture col-half">
                    <div id="picture">
                        <img id="preview" alt=""
                             style="width: 266px; border-radius: 50%; border: 1px solid; height: 266px;"
                             src="<%= request.getContextPath() %>/uploads/<%= request.getAttribute("fileName") %>">
                    </div>
                </div>
                <label for="file-upload" class="custom-file-upload">
                    Chọn ảnh mới
                </label>
                <input id="file-upload" type="file" name="urlImage" accept="image/*"/>
                <button type="submit" class=" btn btn-primary btn-save" id="save_1">Lưu ảnh
                </button>
                <div><a href="managerUserController">Hủy</a>
                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>

