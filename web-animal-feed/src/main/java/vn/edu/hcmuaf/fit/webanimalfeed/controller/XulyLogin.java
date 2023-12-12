package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.LoginDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.header;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

    @WebServlet(name = "XulyLogin", value = "/checkLogin")
    public class XulyLogin extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            response.setContentType("text/html;charset=utf-8");
            try{
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                LoginDao loginDao = new LoginDao();
                Users u =  loginDao.checkLogin(user,pass);
                if(u==null){
                    request.setAttribute("mess","Username hoặc mật khẩu không đúng!")
                    request.getRequestDispatcher("Login.jsp").forward(request,response);
                }else{
                    HttpSession session= request.getSession();
                    session.setAttribute("USER",user);
                            request.getRequestDispatcher("home.jsp").forward(request,response);
//                    response.sendRedirect("home.jsp");
                }
            }
            catch (Exception e)



        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);

        }
    }