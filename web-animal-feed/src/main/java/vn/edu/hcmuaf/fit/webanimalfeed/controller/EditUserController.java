package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserEditDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "editUser", value = "/editUser")
public class EditUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("HoTen");
        String birthday = request.getParameter("dateOfBirth");
        String gender = request.getParameter("gender");
        String address =request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        UserEditDao uD = new UserEditDao();
        Users users = uD.getDanhsachUser(request.getParameter("username"));
        Users u = uD.edit(name, birthday, gender, address, email, phone);
         HttpSession session = request.getSession();
         session.setAttribute("USSER", u);
        response.sendRedirect("user.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}