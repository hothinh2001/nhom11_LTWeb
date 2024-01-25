package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.category.CategoryDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "category", value = "/category")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String cid = request.getParameter("cid");

        CategoryDAO cateDao = new CategoryDAO();
        DAO dao = new DAO();
        List<Product> listP = cateDao.getProductByCate(cid);
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
