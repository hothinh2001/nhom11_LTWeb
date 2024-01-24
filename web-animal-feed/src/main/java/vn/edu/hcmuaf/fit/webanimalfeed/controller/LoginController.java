package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.LoginDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");

        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        LoginDao loginDao = new LoginDao();
        int role = loginDao.checkRole(user, pass);
        Users u = loginDao.checkLogin(user, pass);
        if (u == null) {
            request.setAttribute("status","failed");
            request.setAttribute("mess", "Username hoặc mật khẩu không đúng!");
           request.getRequestDispatcher("Login.jsp").forward(request,response);
        } else {
            request.setAttribute("status","success");
            HttpSession session = request.getSession();
            session.setAttribute("acc", u);
            if (role == 1)
                response.sendRedirect("manager");
            else if (role == 2)
                response.sendRedirect("home");
        }
    }

}