package vn.edu.hcmuaf.fit.webanimalfeed.controller.checkout;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "checkout-confirm", value = "/checkout-confirm")
public class CheckoutDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        double shippingFee = Double.parseDouble(request.getParameter("shippingFee"));
        double totalCartPrice = Double.parseDouble(request.getParameter("totalCartPrice"));
        double total = totalCartPrice + shippingFee;
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");

        request.setAttribute("username", username);
        request.setAttribute("shippingFee", shippingFee);
        request.setAttribute("total", total);
        request.setAttribute("totalCartPrice", totalCartPrice);
        request.setAttribute("address", address);
        request.setAttribute("phone", phone);


        request.getRequestDispatcher("paymentConfirm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
 
