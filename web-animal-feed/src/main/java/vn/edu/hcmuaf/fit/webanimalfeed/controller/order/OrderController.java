package vn.edu.hcmuaf.fit.webanimalfeed.controller.order;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "order", value = "/order")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("totalCartPrice");
        session.removeAttribute("shippingFee");
        session.removeAttribute("cart");
        session.removeAttribute("cartMap");
        response.sendRedirect("home");

    }
}
 
