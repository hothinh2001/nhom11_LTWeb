package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "loadMore", value = "/loadMore")
public class LoadMoreController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String amount = request.getParameter("exits");
        int iamount = Integer.parseInt(amount);
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getNextTop16(iamount);
        PrintWriter out = response.getWriter();
        for (Product product : list) {
            out.println("<div id=\"productList\" class=\"col l-2-4 c-6\">\n" +
                    "                                            <!-- Product Item -->\n" +
                    "                                            <a\n" +
                    "                                                    class=\"product-item\"\n" +
                    "                                                    href=\"" + request.getContextPath() + "/detail?pid=" + product.getId() + "\"\n" +
                    "                                            >\n" +
                    "                                                <div class=\"product-item__img\">\n" +
                    "                                                    <img src=\"" + product.getUrlImage() + "\" alt=\"\"></div>\n" +
                    "                                                <h4 class=\"product-item__title\">\n" +
                    "                                                        " + product.getName() + " \n" +
                    "                                                </h4>\n" +
                    "                                                <h4 class=\"product-item__name\">\n" +
                    "                                                        " + product.getNameDetail() + "\n" +
                    "                                                </h4>\n" +
                    "\n" +
                    "\n" +
                    "                                                <div class=\"product-item__price\">\n" +
                    "                                                    <span class=\"product-item__price-current\">" + product.getPrice() + "đ</span>\n" +
                    "                                                </div>\n" +
                    "                                                \n" +
                    "                                                <div class=\"product-item__action\">\n" +
                    "                                                    <!-- product-item__like--liked -->\n" +
                    "                                                    <span class=\"product-item__like\"> </span>\n" +
                    "                                                    <div class=\"product-item__rating\"></div>\n" +
                    "                                                    <div class=\"product-item__sold\"></div>\n" +
                    "                                                </div>\n" +
                    "                                                <div class=\"product-item__origin\">\n" +
                    "                                                    <span class=\"product-item__brand\">" + product.getBrand().getNameBrand() + "</span>\n" +
                    "                                                </div>\n" +
                    "                                                <div class=\"product-item__favourite\"></div>\n" +
                    "                                            </a>\n" +
                    "                                        </div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
