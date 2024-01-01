package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.ForgotPass;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		String email =request.getParameter("email");

		RequestDispatcher dispatcher = null;
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
			try {
				ForgotPass forgot = new ForgotPass();
				Users u = forgot.updatePass(newPassword,email);

				//if(rowCount >0){
				if{
					request.setAttribute("status", "resetSuccess");
					dispatcher = request.getRequestDispatcher("Login.jsp");
				} else {
					request.setAttribute("status", "resetFailed");
					dispatcher = request.getRequestDispatcher("Login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
