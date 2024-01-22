package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.DAO;
import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserEditDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadUser", value = "/loadUser")
public class LoadUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("u");
        int uid = u.getId();
        UserEditDao uDao = new UserEditDao();
        Users user = uDao.getDanhsachUser(String.valueOf(uid));
        session.setAttribute("user",user);

        request.getRequestDispatcher("user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }
}
