package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.AdminDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "edit", value = "/edit")
public class EditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String pid = request.getParameter("pid");
        String name = request.getParameter("name");
        String nameDetail = request.getParameter("nameDetail");
        String urlImage = request.getParameter("urlImage");
        String price = request.getParameter("price");
        String ingredients = request.getParameter("ingredients");
        String nutritionInfo = request.getParameter("nutritionInfo");
        String usageInstruction = request.getParameter("usageInstruction");
        String quantityAvailable = request.getParameter("quantityAvailable");
        String inventoryId = request.getParameter("inventoryId");
        String categoryId = request.getParameter("categoryId");
        String brandId = request.getParameter("brandId");

        AdminDAO dao = new AdminDAO();
        dao.editProduct(name, nameDetail, urlImage, price, ingredients, nutritionInfo, usageInstruction, quantityAvailable, inventoryId, categoryId, brandId, String.valueOf(pid));
        response.sendRedirect("manager");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
