<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.dao.UserDao" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Users" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.dao.RoleDao" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Role" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    UserDao userDao = new UserDao();
    RoleDao roleDao = new RoleDao();
    String id = request.getParameter("uid");
    Users user = userDao.getUserById(id);
    List<Role> listR = roleDao.getAllRole();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Khách hàng</title>
    <!--  <link rel="stylesheet" href="/assets/css/dashboard.css">-->
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/AproductList.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/managerUser.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/headerAdmin.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/bootstrap-5.0.2/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>

<div class="main-content">
    <jsp:include page="../include/sideBar.jsp"/>

    <jsp:include page="headerAdmin.jsp"/>


    <main>
        <div class="page-header">
            <h1>Chỉnh sửa thông tin cá nhân</h1>
            <small>Home / Chỉnh sửa thông tin cá nhân</small>
        </div>

        <div class="page-content">
            <form action="${pageContext.request.contextPath}/userEditAdmin?uid=${user.id}"
                  method="post">
                <div class="form-content">
                    <div class="form-content-left">

                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Tên khách hàng</label>
                            <input value="${user.name}" name="name" type="text" class="form-control"
                                   id="exampleFormControlInput1" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput2" class="form-label">Email</label>
                            <input value="${user.email}" name="email" type="text" class="form-control"
                                   id="exampleFormControlInput2"
                                   required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput3" class="form-label">Tên đăng nhập</label>
                            <input value="${user.username}" name="username" type="text" class="form-control"
                                   id="exampleFormControlInput3"
                                   required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput4" class="form-label">Mật khẩu</label>
                            <input value="${user.password}" name="password" type="text" class="form-control"
                                   id="exampleFormControlInput4"
                                   required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput5" class="form-label">Số điện thoại</label>
                            <input value="${user.phone}" name="phone" type="text" class="form-control"
                                   id="exampleFormControlInput5"
                                   required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput6" class="form-label">Địa chỉ</label>
                            <input value="${user.address}" name="address" type="text" class="form-control"
                                   id="exampleFormControlInput6" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput7" class="form-label">UlrImage</label>
                            <input value="${user.avatar}" name="avatar" type="text" class="form-control"
                                   id="exampleFormControlInput7" required>
                        </div>
                    </div>
                    <div class="form-content-right">
                        <div class="form-content-right-top">
                            <div class="form-content-category">
                                <select id="role" name="role" class="form-select"
                                        aria-label="Default select example" required>
                                    <% for (Role role : listR) { %>
                                    <option

                                            value="<%=role.getId()%>"
                                            <%=(role.getId()) == user.getRoleId() ? "selected" : "" %>

                                    >
                                        <%=role.getNameRole()%>
                                    </option>
                                    <% }
                                    %>
                                </select>
                            </div>
                            <div class="form-content-category">
                                <select id="gender" name="gender" class="form-select"
                                        aria-label="Default select example" required>
                                    <option>${user.gender}</option>
                                    <option>
                                        Nam
                                    </option>
                                    <option>Nữ</option>
                                    <option>Khác</option>
                                </select>
                            </div>
                            <div class="form-content-modified">
                                <label for="datepicker">Ngày sinh:</label>
                                <input type="date" id="datepicker" name="birthday" value="${user.birthdate}" required/>
                            </div>
                            <%--                                                        <div class="form-content-brand">--%>
                            <%--                                                            <select id="brandId" name="brandId"--%>
                            <%--                                                                    class="form-select" aria-label="Default select example" required>--%>
                            <%--                                                                <% for (Brand i : listB) { %>--%>
                            <%--                                                                <option--%>

                            <%--                                                                        value="<%=i.getId()%>"--%>
                            <%--                                                                        <%= (i.getId()) == detail.getBrandId() ? "selected" : "" %>--%>

                            <%--                                                                >--%>

                            <%--                                                                    <%=i.getNameBrand()%>--%>
                            <%--                                                                </option>--%>
                            <%--                                                                <% }--%>
                            <%--                                                                %>--%>
                            <%--                                                            </select>--%>
                            <%--                                                        </div>--%>

                        </div>
                        <div class="form-content-button">
                            <button type="submit" class="btn btn-primary btn-lg"
                                    value="${pageContext.request.contextPath}/userEditAdmin">Cập nhật
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

    </main>

</div>
</body>
</html>

