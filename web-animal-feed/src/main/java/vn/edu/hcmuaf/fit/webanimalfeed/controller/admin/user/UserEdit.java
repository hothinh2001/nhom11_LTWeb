package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin.user;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "userEdit", value = "/userEditAdmin")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        String gender = request.getParameter("gender");
        String birthday = request.getParameter("birthday");
        String avatar = request.getParameter("avatar");
        int uid = Integer.parseInt(request.getParameter("uid"));

        UserDao uDao = new UserDao();
        uDao.editUserById(uid, name, email, username, password, phone, address, role, gender, birthday, avatar);
        response.sendRedirect("managerUser");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
