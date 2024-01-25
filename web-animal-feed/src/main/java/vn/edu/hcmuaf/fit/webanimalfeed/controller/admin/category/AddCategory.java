package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin.category;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.category.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "addCategory", value = "/addCategory")
public class AddCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        CategoryDAO cateDao = new CategoryDAO();
        String nameCate = request.getParameter("nameCate");
        String iconCate = request.getParameter("iconCate");
        cateDao.insertCategory(nameCate, iconCate);
        response.sendRedirect("managerCategory");


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
