package vn.edu.hcmuaf.fit.webanimalfeed.controller.admin.user;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.RoleDao;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Role;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "loadUser", value = "/loadUserAdmin")
public class LoadUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String uid = request.getParameter("uid");
        UserDao dao = new UserDao();
        RoleDao roleDao = new RoleDao();
        List<Role> listRole = roleDao.getAllRole();
        Users u = dao.getUserById(uid);
        request.setAttribute("user", u);
        request.setAttribute("listR", listRole);
        request.getRequestDispatcher("webpage/admin/userEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
