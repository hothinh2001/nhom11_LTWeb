package vn.edu.hcmuaf.fit.webanimalfeed.controller.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.impl.CartServiceImpl;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;

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
        String productId = request.getParameter("id"); // Lấy mã sản phẩm từ request
        cart.add(Integer.parseInt(productId)); // Thêm sản phẩm vào giỏ hàng truyền id từ đây
        session.setAttribute("cartMap", cart);
        session.setAttribute(("totalCartPrice"), cart.getTotalCartPrice());
        response.sendRedirect(request.getContextPath() + "/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
