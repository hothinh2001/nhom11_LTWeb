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
    <title>Oder List</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <link rel="stylesheet" href="./admin/assets/css/dashboard/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/sideBar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
<input type="checkbox" id="menu-toggle">

<jsp:include page="sideBar.jsp"/>

<div class="main-content">

    <header>
        <div class="header-content">
            <label for="menu-toggle">
                <span class="las la-bars"></span>
            </label>

            <div class="header-menu">
                <label for="">
                    <span class="las la-search"></span>
                </label>


                <div class="notify-icon">
                    <span class="las la-bell"></span>
                    <span class="notify">3</span>
                </div>

                <div class="user">
                    <div class="bg-img" style="background-image: url(admin/assets/images/profile/user-1.jpg)"></div>

                    <span class="las la-power-off"></span>
                    <span>Đăng xuất</span>
                </div>
            </div>
        </div>

    </header>
    <div class="records table-responsive">
        <div style="margin: 12px; text-align: center">
            <h2>Danh sách đơn hàng</h2>
        </div>

        <div class="record-header">
            <form>
                <div class="add">
                    <span>Entries</span>
                    <select name="" style="width: 100%;">
                        <option value="id">ID đơn hàng</option>
                        <option value="name">Tên khách hàng</option>
                        <option value="date">Date</option>
                    </select>
                    <div class="browse">
                        <select name="" id="">
                            <option value="">Delivered</option>
                            <option value="">Shipped</option>
                            <option value="">Processing</option>
                        </select>
                    </div>
                    <input type="search" placeholder="Search" class="record-search"
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
                <tbody>
                <tr>
                    <td>#5033</td>
                    <td>
                        <div class="client">
                            <div class="client-info">
                                <h4 class="st-heading">Tran Ngoc Bao Tran</h4>
                            </div>
                        </div>
                    </td>
                    <td>
                        23/12/2023
                    </td>
                    <td>
                        paid
                    </td>
                    <td class="">
                        25
                    </td>
                    <td class="">Mastercard</td>
                    <td class="loading">Processing</td>

                    <td>
                        <div class="btn-group" role="group" aria-label="Basic outlined example">
                            <a class="edit-remove-admin"><i class="fas fa-trash-alt"></i></a>
                            <a class="edit-remove-admin"><i class="fas fa-edit"></i></a>

                        </div>
                    </td>
                </tr>
                </tbody>

                <tbody>
                <tr>
                    <td>#5099</td>
                    <td>
                        <div class="client">
                            <div class="client-info">
                                <h4 class="st-heading">Nguyen Van A</h4>
                            </div>
                        </div>
                    </td>
                    <td>
                        22/11/2023
                    </td>
                    <td>
                        paid
                    </td>
                    <td class="">
                        25000
                    </td>
                    <td class="">Mastercard</td>
                    <td class="loading">Processing</td>

                    <td>
                        <div class="btn-group" role="group" aria-label="Basic outlined example">
                            <a class="edit-remove-admin"><i class="fas fa-trash-alt"></i></a>
                            <a class="edit-remove-admin"><i class="fas fa-edit"></i></a>

                        </div>
                    </td>
                </tr>
                </tbody>


                <tbody>
                <tr>
                    <td>#50939</td>
                    <td>
                        <div class="client">
                            <div class="client-info">
                                <h4 class="st-heading">Nguyen Van B</h4>
                            </div>
                        </div>
                    </td>
                    <td>
                        22/11/2023
                    </td>
                    <td>
                        paid
                    </td>
                    <td class="">
                        25000
                    </td>
                    <td class="">Mastercard</td>
                    <td class="loading">Processing</td>

                    <td>
                        <div class="btn-group" role="group" aria-label="Basic outlined example">
                            <a class="edit-remove-admin"><i class="fas fa-trash-alt"></i></a>
                            <a class="edit-remove-admin"><i class="fas fa-edit"></i></a>

                        </div>
                    </td>
                </tr>
                </tbody>
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


</body>
</html>


