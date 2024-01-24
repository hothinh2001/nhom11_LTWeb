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
        if (null == u) {
            request.setAttribute("mess", "Username hoặc mật khẩu không đúng!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", u);
            if (role == 1) {
                response.sendRedirect("admin");
            } else if (role == 2) {
                // Kiểm tra nếu URL trước đó là "checkout", chuyển hướng đến "paymentForm.jsp"
                String redirectUrl = (String) session.getAttribute("url");
                if (redirectUrl != null && redirectUrl.equals("checkout")) {
                    session.removeAttribute("url"); // Xóa URL trước đó
                    response.sendRedirect("cart");
                } else {
                    response.sendRedirect("home");
                }
            }
        }
    }

}