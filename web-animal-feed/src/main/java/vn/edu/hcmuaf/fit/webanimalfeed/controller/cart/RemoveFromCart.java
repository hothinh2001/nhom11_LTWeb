package vn.edu.hcmuaf.fit.webanimalfeed.controller.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "remove-from-cart", value = "/remove-from-cart")
public class RemoveFromCart extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cart = (CartService) session.getAttribute("cartMap");
        if (cart != null) {
            String id = request.getParameter("productId");
            cart.remove(Integer.parseInt(id));
            session.setAttribute("cartMap", cart);
            session.setAttribute("cartSize", cart.getTotalQuantity());
            session.setAttribute(("totalCartPrice"), cart.getTotalCartPrice());

            // Trả về thông tin giỏ hàng dưới dạng JSON, kèm theo token mới
            String jsonResponse = "{\"cartSize\": " + cart.getTotalQuantity() + ", \"status\": \"success\", \"token\": \"" + "\"}";
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse);

        } else {
            // Trả về thông tin lỗi nếu giỏ hàng không tồn tại
            String jsonResponse = "{\"status\": \"error\", \"message\": \"Cart not found\"}";
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse);
        }
    }

}
