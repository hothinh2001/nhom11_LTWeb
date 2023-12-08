ackage vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.LoginDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "XulyLogin", value = "/Login")
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
                response.sendRedirect("Login.jsp");
            }else{
                response.sendRedirect("home.jsp");
            }
        }
        catch (Exception e)



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}