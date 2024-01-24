package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "editUser", value = "/editUser")
public class UserEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String birthday = request.getParameter("birthday");
        String avatar = request.getParameter("avatar");

        int uid = Integer.parseInt(request.getParameter("uid"));
        UserDao userDao = new UserDao();
        Users user = userDao.editUser(name, birthday, gender, address, email, phone, avatar, uid);
        request.setAttribute("user", user);
        HttpSession session = request.getSession();
        session.getAttribute("user");
        session.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("managerUserController");
        dispatcher.forward(request, response);

//        Part p = request.getPart("urlImage");
//        String fileName = p.getSubmittedFileName();
//        String path = getServletContext().getRealPath("") + "uploads";
//        System.out.println("realPath = " + path);
//        File file = new File(path);
//        p.write(path + File.separator + fileName);

//        HttpSession session = request.getSession();
//        Users u = (Users) session.getAttribute("user");
//        UserDao uDao = new UserDao();
//        if (u != null) {
//            int uid = u.getId();
//            Users user = uDao.editUser(uid, name, birthday, gender, address, email, phone, avatar);
//            session.setAttribute("user", user);
//            response.sendRedirect("managerUserController");
//        } else {
//            response.sendRedirect("Login.jsp");
//        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}