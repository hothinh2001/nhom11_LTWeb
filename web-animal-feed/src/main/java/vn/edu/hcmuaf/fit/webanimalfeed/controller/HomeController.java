package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getAllProduct();
        request.setAttribute("listP", list);

        request.getRequestDispatcher("product-detail.jsp").forward(request, response);
        System.out.println("list: " + list);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
