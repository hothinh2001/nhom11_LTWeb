package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "loadBrand", value = "/loadBrand")
public class LoadBrand extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String bid = request.getParameter("bid");
        DAO dao = new DAO();
        Brand brand = DAO.getBrandById(String.valueOf(bid));
        request.setAttribute("detailBrand", brand);
        request.getRequestDispatcher("webpage/admin/brand.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
