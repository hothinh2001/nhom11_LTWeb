package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.OrderDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Orders;
import vn.edu.hcmuaf.fit.webanimalfeed.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "DashboardController", value = "/dashboard")
public class dashboard extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Tổng số đơn hàng
        List<Orders> sumOrder = OrderService.getAll();
        request.setAttribute("sumOrder", sumOrder);

        // tổng số khách hàng đăng kí
        //  int  countUser = UserEditDao.countUserRoles();

        // tổng doanh thu
        List<Orders> orderRevenue = OrderDao.findByOrderStatus(String.valueOf("completed"));
        double coun = 0.0;
        for (Orders or : orderRevenue
        ) {
            coun += or.getTotalOrder();

        }
        request.setAttribute("orderRevenue", orderRevenue);

        //Đơn hàng đang đợi
        List<Orders> orderWaiting = OrderDao.findByOrderStatus("pending");
        request.setAttribute("orderWaiting", orderWaiting);

        //hiển thị thông tin order
        List<Orders> listO = OrderDao.findAll();
        request.setAttribute("listO", listO);
        request.getRequestDispatcher("webpage/admin/dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}