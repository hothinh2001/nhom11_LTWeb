package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.Signup;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SignupController", value = "/signup")
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
        String birthdate = request.getParameter("birthdate");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
//        RequestDispatcher dispatcher=null;
            int role = 2;
            Signup dao = new Signup();
            Users u = dao.checkUserExist(username);
            if (u == null && pass.equals(repass))  {
                //user chưa  có nên add vào và pass== repass
                request.setAttribute("status","success");
                dao.AddSignup(email, username, birthdate, gender, phone, pass, role);

                request.getRequestDispatcher("Login.jsp").forward(request,response);
            } else {
                // bị trung username đẩy về trang login
                request.setAttribute("mess", "Mật khẩu không trùng khớp");
                request.setAttribute("status","failed");
                request.getRequestDispatcher("Signup.jsp").forward(request,response);
            }

        }
    }




