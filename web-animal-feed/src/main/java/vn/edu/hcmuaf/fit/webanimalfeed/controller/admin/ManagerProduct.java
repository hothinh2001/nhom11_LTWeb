package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.AdminDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.LoginDao;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "manager", value = "/manager")
public class ManagerProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("acc");
        if (u == null) {
            session.setAttribute("url", "manager");
            request.getRequestDispatcher("Login.jsp").forward(request, response); //Chuyển sang trang đăng nhập
        } else {
            String username = u.getUsername();
            String pass = u.getPassword();
            LoginDao loginDao = new LoginDao();
            Users user = loginDao.checkLogin(username, pass);
            if (user.getRole().getId() != 1) {
                AdminDAO Adao = new AdminDAO();
                DAO dao = new DAO();
                Adao.getAllProduct();
                dao.getAllCategory();
                request.setAttribute("listP", Adao.getAllProduct());
                request.setAttribute("listC", dao.getAllCategory());
                request.setAttribute("listB", dao.getAllBrands());
                request.setAttribute("listI", dao.getAllInventories());
                request.getRequestDispatcher("webpage/admin/productList.jsp").forward(request, response);
            } else {
                response.sendRedirect("home");
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
