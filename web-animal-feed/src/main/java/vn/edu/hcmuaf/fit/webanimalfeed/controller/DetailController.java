package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "detail", value = "/detail")
public class DetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        ProductDAO dao = new ProductDAO();
        String id = request.getParameter("pid");

        try {
            if (id != null) {
                Category c = dao.getCategoryByProductId(id);

                if (c != null) {
                    String cid = String.valueOf(c.getId());
                    List<Product> listRelated = dao.get4ProductByCategory(cid, id);

                    ProductService productService = ProductService.getInstance();
                    Product product = productService.getProductById(id);

                    if (product != null) {
                        request.setAttribute("detail", product);
                        request.setAttribute("listRelated", listRelated);
                        request.getRequestDispatcher("product-detail.jsp").forward(request, response);
                    } else {
                        // Handle the case where the product is not found
                        response.sendRedirect("home");
                    }
                } else {
                    // Handle the case where the category is not found
                    response.sendRedirect("home");
                }
            } else {
                // Handle the case where the 'id' parameter is missing or invalid
                response.sendRedirect("home");
            }
        } catch (Exception e) {
            // Log the exception or provide user-friendly error message
            e.printStackTrace();
            response.sendRedirect("home");
        }
    }

}
