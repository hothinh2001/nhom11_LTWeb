package vn.edu.hcmuaf.fit.webanimalfeed.controller.checkout;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "checkout", value = "/checkout")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("acc");
        CartService cart = (CartService) session.getAttribute("cartMap");
        if (user != null) {
            if (cart != null && cart.getTotalQuantity() > 0) {
                session.setAttribute("shippingFee", 30000);
                session.setAttribute("cartMap", cart);
                session.setAttribute("totalCartPrice", cart.getTotalCartPrice());
            }
            request.getRequestDispatcher("paymentForm.jsp").forward(request, response);
        } else {
            session.setAttribute("url", "checkout");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}