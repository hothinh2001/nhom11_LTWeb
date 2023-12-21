package vn.edu.hcmuaf.fit.webanimalfeed.controller.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.impl.CartServiceImpl;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;
import vn.edu.hcmuaf.fit.webanimalfeed.utils.TokenGenerator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "add-cart", value = "/add-cart")
public class AddToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cart = (CartService) session.getAttribute("cartMap");
        if (cart == null) {
            cart = new CartServiceImpl();
        }
        String id = request.getParameter("id");
        String token = TokenGenerator.generateNewToken();
        cart.add(Integer.parseInt(id));
        session.setAttribute("cartMap", cart);
        session.setAttribute("sessionToken", token);
        System.out.println("Add to cart: " + token);


        // Thực hiện chuyển hướng sau khi thêm vào giỏ hàng
        response.sendRedirect("webpage/cart/cart.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
