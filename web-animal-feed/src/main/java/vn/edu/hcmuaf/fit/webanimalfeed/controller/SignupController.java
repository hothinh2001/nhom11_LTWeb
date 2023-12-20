package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.Signup;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SignupController", value = "/SignupController")
public class SignupController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        response.setContentType("text/html;charset=utf-8");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String date = request.getParameter("dateOfBirth");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        if (!pass.equals(repass)) {
            request.setAttribute("mess", "Mật khẩu không trùng khớp");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        } else {
            Signup dao = new Signup();
            Users u = dao.checkUserExist(username);
            if (u == null) {
                //duoc add vao
                dao.AddSignup(email, username, date, gender, phone, pass);
                response.sendRedirect("home.jsp");


            } else {
                // bị trung username
                response.sendRedirect("Login.jsp");

            }
        }
    }
}



