package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.AdminDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "add", value = "/add")
public class addProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF8");
        String name = request.getParameter("name");
        String nameDetail = request.getParameter("nameDetail");
        String ingredients = request.getParameter("ingredients");
        String nutritionInfo = request.getParameter("nutritionInfo");
        String usageInstruction = request.getParameter("usageInstruction");
        String price = request.getParameter("price");
        String image = request.getParameter("urlImage");
        String quantityAvailable = request.getParameter("quantityAvailable");
        String brandId = request.getParameter("brandId");
        String inventoryId = request.getParameter("inventoryId");
        String categoryId = request.getParameter("categoryId");
        String createdAt = request.getParameter("createdAt");
        String modifiedAt = request.getParameter("modifiedAt");


        AdminDAO dao = new AdminDAO();
        dao.insertProduct(name, nameDetail, ingredients, nutritionInfo, usageInstruction, price, image, quantityAvailable, inventoryId, categoryId, brandId, createdAt, modifiedAt);
        response.sendRedirect("manager");

    }
}
