package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "managerUserController", value = "/managerUserController")
public class UserManagerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession(true);
        Users u = (Users) session.getAttribute("acc");

        if (u != null) {
            int uid = u.getId();
            UserDao uDao = new UserDao();
            Users user = uDao.getUserById(String.valueOf(uid));

            request.setAttribute("user", user);
            request.getRequestDispatcher("user.jsp").forward(request, response);
        } else {
            // Người dùng chưa đăng nhập, có thể chuyển hướng hoặc thực hiện hành động khác
            response.sendRedirect("Login.jsp");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
