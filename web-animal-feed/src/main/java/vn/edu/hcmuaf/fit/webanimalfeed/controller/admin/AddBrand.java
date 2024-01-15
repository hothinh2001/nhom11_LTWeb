package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.AdminDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "addBrand", value = "/addBrand")
public class AddBrand extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("nameBrand");
        String note = request.getParameter("note");

        AdminDAO dao = new AdminDAO();
        dao.insertBrand(name, note);
        response.sendRedirect("managerBrand");
    }
}
