package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.BrandDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "brand", value = "/brand")
public class BrandController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String bid = request.getParameter("bid");
        BrandDAO brandDAO = new BrandDAO();
        DAO dao = new DAO();
        List<Product> listP = brandDAO.getProductByBrandId(bid);
        List<Category> listCate = dao.getAllCategory();
        List<Brand> listB = dao.getAllBrands();

        request.setAttribute("listP", listP);
        request.setAttribute("listB", listB);
        request.setAttribute("listCate", listCate);
        request.getRequestDispatcher("product-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
