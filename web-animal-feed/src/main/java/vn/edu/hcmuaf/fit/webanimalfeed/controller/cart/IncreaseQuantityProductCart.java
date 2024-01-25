package vn.edu.hcmuaf.fit.webanimalfeed.controller.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "increase-quantity-product", value = "/increase-quantity-product")
public class IncreaseQuantityProductCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cart = (CartService) session.getAttribute("cartMap");
        if (cart != null) {
            String productId = request.getParameter("productId");
            String quantity = request.getParameter("quantity");
            cart.increaseQuantity(Integer.parseInt(productId), Integer.parseInt(quantity)); //tăng số lượng sản phẩm
            session.setAttribute("cartMap", cart);
            session.setAttribute(("totalCartPrice"), cart.getTotalCartPrice());


            String jsonResponse = "{\"status\": \"success\", \"message\": \"Increase quantity product successfully\"}";
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse);
        } else {
            String jsonResponse = "{\"status\": \"error\", \"message\": \"Cart not found\"}";
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse);
        }


    }
}
 
