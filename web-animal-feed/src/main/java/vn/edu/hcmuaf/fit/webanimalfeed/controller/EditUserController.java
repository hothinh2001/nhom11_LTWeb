package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.UserEditDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "editUser", value = "/editUser")
public class EditUserController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("HoTen");
        String birthday = request.getParameter("dateOfBirth");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        Part p = request.getPart("urlImage");
        String fileName = p.getSubmittedFileName();
        String path = getServletContext().getRealPath("") + "uploads";
        System.out.println("realPath = " + path);
        File file = new File(path);
        p.write(path + File.separator + fileName);

        HttpSession session = request.getSession();
        Users u = (Users) session.getAttribute("acc");
        UserEditDao uDao = new UserEditDao();
        if (u != null) {
            int uid = u.getId();
            Users user = uDao.editUserById(uid, name, birthday, gender, address, email, phone, fileName);
            session.setAttribute("user", user);
            request.setAttribute("fileName", fileName);
            RequestDispatcher dispatcher = request.getRequestDispatcher("loadUser");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("Login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}