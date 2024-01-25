package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin.category;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.category.CategoryDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "loadCategory", value = "/loadCategory")
public class LoadCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String cid = request.getParameter("cid");
        CategoryDAO dao = new CategoryDAO();
        Category category = CategoryDAO.getCategoryById(Integer.parseInt(cid));
        request.setAttribute("cate", category);
        request.getRequestDispatcher("webpage/admin/category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
