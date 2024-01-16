package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.AdminDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "editBrand", value = "/editBrand")
public class EditBrand extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String bid = request.getParameter("bid");
        String name = request.getParameter("nameBrand");
        String note = request.getParameter("note");

        AdminDAO dao = new AdminDAO();
        dao.editBrand(name, note, String.valueOf(bid));
        response.sendRedirect("managerBrand");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
