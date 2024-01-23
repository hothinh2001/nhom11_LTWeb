package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "product-list", value = "/product-list")
public class ProductList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ProductDAO dao = new ProductDAO();
        DAO dao1 = new DAO();
        List<Brand> listB = dao1.getAllBrands();
        List<Category> listCate = dao1.getAllCategory();
        request.setAttribute("listB", listB);
        request.setAttribute("listCate", listCate);
        request.setAttribute("listP", dao.getAllProduct());
        request.getRequestDispatcher("product-list.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
