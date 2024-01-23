<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
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
    <form action="loadUser" id="form-login">
        <h1 class="form-heading">Thông tin chỉnh sửa</h1>
        <div class="form-content">
            <div class="form-info">
                <div class="form-group">
                    <i class="far fa-user"></i>
                    <input type="text" class="form-input" name="HoTen" value="${user.name}"/>
                </div>

                <div class="form-group">
                    <label for="datepicker">Ngày sinh:</label>
                    <input value="${user.birthdate}" type="date" id="datepicker" name="birthdate" required/>
                </div>

                <div class="form-group" style="width: 100%;border-bottom:none">
                    <label style="width: 80px">Giới tính</label>
                    <select id="gender" name="gender"
                            style="width: 100%; font-size: 16px; padding: 6.5px 10px">
                        <option value="${user.gender}">Khác</option>
                        <option value="Nam">Nam</option>
                        <option value="Nu">Nữ</option>
                    </select>

                </div>

                <div class="form-group">
                    <i class="fas fa-address-card"></i>
                    <input value="${user.address}" type="text" class="form-input" name="address" placeholder="Địa chỉ "/>
                </div>

                <div class="form-group">
                    <i class="fas fa-envelope-open"></i>
                    <input value="${user.email}" type="email" class="form-input" name="email" placeholder="Email"/>
                </div>
                <div class="form-group">
                    <i class="fas fa-phone"></i>
                    <input value="${user.phone}" type="number" class="form-input" name="phone" placeholder="Số điện thoại"/>
                </div>
                <div class="btn-confirm">
                    <a href="../home/index.html">
                        <button type="submit" class="form-submit"> Cập Nhật</button>
                    </a>
                </div>
            </div>
            <div class="form-avatar">
                <form method="POST">
                    <div class="picture col-half">
                        <div id="picture">
                            <img id="preview" alt=""
                                 style="width: 266px;border-radius: 50%; border: 1px solid; height: 266px;" src="${user.avatar}"/>
                        </div>
                    </div>
                    <label for="file-upload" class="custom-file-upload">
                        Chọn ảnh mới
                    </label>
                    <input id="file-upload" type="file" name="file"/>
                    <button type="submit" class=" btn btn-primary btn-save" id="save_1">Lưu ảnh
                    </button>
                </form>
                <div><a href="GetEmail.jsp" class="quenmatkhau-link">Hủy</a>
                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>
