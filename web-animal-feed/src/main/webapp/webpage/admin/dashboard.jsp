<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.entity.Orders" %>
<%@ page import="vn.edu.hcmuaf.fit.webanimalfeed.service.OrderService" %>
<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 12/3/2023
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Orders> listO = OrderService.getAll();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>Modern Admin Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/dashboard/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/headerAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
<div class="main-content">
    <jsp:include page="../include/sideBar.jsp"/>

    <jsp:include page="headerAdmin.jsp"/>


    <main>

        <div class="page-header">
            <h1>Dashboard</h1>
            <small>Home / Dashboard</small>
        </div>

        <div class="page-content">

            <div class="analytics">

                <div class="card">
                    <div class="card-head">
                        <h2>107,200</h2>
                        <span class="las la-shopping-basket"></span>
                    </div>
                    <div class="card-progress">
                        <small>Tổng số Đơn hàng đang có</small>
                        <div class="card-indicator">
                            <div class="indicator one" style="width: 60%"></div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-head">
                        <h2>340,230</h2>
                        <span class="las la-users"></span>
                    </div>
                    <div class="card-progress">
                        <small>Tổng số khách hàng đăng kí</small>
                        <div class="card-indicator">
                            <div class="indicator two" style="width: 80%"></div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-head">
                        <h2 class="price-tour-format">$653,200</h2>
                        <span class="las la-archive"></span>
                    </div>
                    <div class="card-progress">
                        <small>Tổng doanh thu </small>
                        <div class="card-indicator">
                            <div class="indicator three" style="width: 65%"></div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-head">
                        <h2>47,500</h2>
                        <span class="las la-spinner"></span>
                    </div>
                    <div class="card-progress">
                        <small>Đơn hàng đang đợi</small>
                        <div class="card-indicator">
                            <div class="indicator four" style="width: 90%"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <div class="records table-responsive">
        <div style="margin: 12px; text-align: center">
            <h2>Danh sách đơn hàng đang đợi</h2>
        </div>

        <div class="record-header">
            <form>
                <div class="add">
                    <span>Entries</span>
                    <select name="" style="width: 100%;">
                        <option value="id">ID đơn hàng</option>
                        <option value="name">Tên khách hàng</option>

                        <option value="paystatus">Payment Status</option>
                        <option value="total">Order Status</option>
                        <option value="paymethob">Payment Methob</option>

                    </select>
                    <input type="text" placeholder="Nhập dữ liệu"
                           style="height: 35px;border: 1px solid #b0b0b0;border-radius: 3px;display: inline-block;padding: 0rem 0.5rem;margin-right: 0.8rem;color: #666;">
                    <button type="submit">Tìm</button>
                </div>
            </form>


        </div>

        <div>

            <table width="100%">
                <thead>
                <tr>
                    <th><span class="las la-sort"></span> ID đơn hàng</th>
                    <th><span class="las la-sort"></span> Tên khách hàng</th>
                    <th><span class="las la-sort"></span> Date</th>
                    <th><span class="las la-sort"></span> Payment Status</th>
                    <th><span class="las la-sort"></span> Total</th>
                    <th><span class="las la-sort"></span> Payment Methob</th>
                    <th><span class="las la-sort"></span> Order Status</th>
                    <th><span class="las la-sort"></span> Action</th>
                </tr>
                </thead>
                <%--                <% for (Orders o : listO) { %>--%>
                <c:forEach items="${listO}" var="o" varStatus="loop">
                    <tbody>
                    <tr>
                        <td>#AF0${loop.index + 1}</td>
                        <td>
                            <div class="client">
                                <div class="client-info">
                                    <h4 class="st-heading">${o.getUserId().getName()}
                                    </h4>
                                </div>
                            </div>
                        </td>
                        <td>
                                ${o.getDateOrder()}
                        </td>
                        <td>
                                ${o.getPaymentId().getStatus().getNameStatus()}
                        </td>
                        <td class="">
                                ${o.getTotalPrice()}
                        </td>
                        <td class="">${o.getPaymentId().getMethod().getNameMethod()}
                        </td>
                        <td class="loading">${o.getStatused().getNameStatus()}
                        </td>

                        <td>
                            <div class="btn-group" role="group" aria-label="Basic outlined example">
                                <a class="edit-remove-admin"><i class="fas fa-trash-alt"></i></a>
                                <a class="edit-remove-admin"><i class="fas fa-edit"></i></a>

                            </div>
                        </td>
                    </tr>
                    </tbody>
                </c:forEach>

            </table>

            <!--          <div class="pagination moderm-pagination" id="moderm-pagination">-->
            <!--            <ul class="page-numbers" >-->
            <!--              <li>-->
            <!--                <a><i-->
            <!--                        class="fas fa-angle-left"></i></a>-->
            <!--              </li>-->
            <!--              <li>-->
            <!--                <a-->
            <!--                   style="box-shadow: 0 1px 2px rgba(0,0,0,.08), 0 4px 12px rgba(0,0,0,.05); width: 35px;height: 40px;border-radius: 7px;border: 1px solid #ddd; padding: 4px 3px 0 0">-->
            <!--                  <span style="display: block;height: 32px;width: 32px;line-height: 32px;text-decoration: none;color: var(&#45;&#45;grey-color,#5E6D77);">1</span></a>-->
            <!--              </li>-->
            <!--              <li>-->
            <!--                <a><i-->
            <!--                        class="fas fa-angle-right"></i></a>-->
            <!--              </li>-->
            <!--            </ul>-->
            <!--          </div>-->
        </div>
    </div>

</div>


</div>


</div>
</body>
</html>


