package vn.edu.hcmuaf.fit.webanimalfeed.controller;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.Signup;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.util.Properties;

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
            if (u == null && pass.equals(repass)) {
                //user chưa  có nên add vào và pass== repass
                request.setAttribute("status", "success");
                dao.AddSignup(email, username, birthdate, gender, phone, pass, role);

                String to = email;// change accordingly
                // Get the session object
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.socketFactory.port", "465");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.port", "465");
                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        //return new PasswordAuthentication("your_email", "your_app_password");
                        return new PasswordAuthentication("baotran.300101@gmail.com", "trinheypvjaissov");
                    }
                });
                // compose message
                try {
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(email));// change accordingly
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                    message.setSubject("Thức ăn chăn nuôi 3AE");
                    message.setText("Chúc mừng bạn đã đăng ký thành công");
                    // send message
                    Transport.send(message);
                    System.out.println("message sent successfully");
                } catch (MessagingException e) {
                    throw new RuntimeException(e);
                }

                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            else if(u == null && !pass.equals(repass)){
                    // bị trung username đẩy về trang login
                    request.setAttribute("mess", "Mật khẩu không trùng khớp");
                    request.setAttribute("status","failedPass");
                    request.getRequestDispatcher("Signup.jsp").forward(request,response);

            } else if(u !=null){
                // bị trung username đẩy về trang login
                request.setAttribute("umess", "username bị trùng");
                request.setAttribute("status","failedUser");
                request.getRequestDispatcher("Signup.jsp").forward(request,response);
            }

        }
    }




