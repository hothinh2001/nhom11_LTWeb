package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.AdminDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Inventory;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "loadProduct", value = "/loadProduct")
public class LoadProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("pid");

        DAO dao = new DAO();
        Product product = AdminDAO.getProductById(id);
        List<Category> listC = dao.getAllCategory();
        List<Brand> listB = dao.getAllBrands();
        List<Inventory> listI = dao.getAllInventories();
        request.setAttribute("detail", product);
        request.setAttribute("listC", listC);
        request.setAttribute("listB", listB);
        request.setAttribute("listI", listI);
        request.getRequestDispatcher("editProduct.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
