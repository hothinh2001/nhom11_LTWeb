package vn.edu.hcmuaf.fit.webanimalfeed.controller.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartProduct;
import vn.edu.hcmuaf.fit.webanimalfeed.impl.CartServiceImpl;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "cart", value = "/cart")
public class CartController extends HttpServlet {
    private static CartService cartService = new CartServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartService cart = (CartService) session.getAttribute("cartMap");
        Users user = (Users) session.getAttribute("acc");
        if (cart == null) {
            cart = new CartServiceImpl();
        }
        if (user != null) {
            // Kiểm tra xem giỏ hàng của người dùng đã tồn tại trong cơ sở dữ liệu hay chưa
            boolean isCartExist = cartService.isCartExist(user.getId());
            if (!isCartExist) {
                // Nếu giỏ hàng chưa tồn tại, tạo mới giỏ hàng trong cơ sở dữ liệu
                cart.createCart(user.getId());
            }
            // Lấy thông tin giỏ hàng từ cơ sở dữ liệu
            cart = cartService.getCartDetail(user.getId());
            // Lấy giỏ hàng từ session
            CartService cartSession = (CartService) session.getAttribute("cartMap");

            if (cartSession != null && cartSession.getTotalQuantity() > 0) {
                // Thêm sản phẩm từ giỏ hàng trong session vào giỏ hàng từ cơ sở dữ liệu
                for (Map.Entry<Integer, CartProduct> entry : cartSession.getData().entrySet()) {
                    int productId = entry.getKey();
                    CartProduct cartProductSession = entry.getValue();

                    // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng từ cơ sở dữ liệu hay chưa
                    if (!cart.contains(productId)) {
                        // Nếu sản phẩm chưa tồn tại, thêm mới vào giỏ hàng từ cơ sở dữ liệu
                        cart.add(productId, cartProductSession.getQuantity());
                    } else {
                        // Nếu sản phẩm đã tồn tại, cập nhật số lượng
                        cart.increaseQuantity(productId, cartProductSession.getQuantity());
                    }
                }

                // Lưu lại giỏ hàng đã cập nhật vào cơ sở dữ liệu
                cartService.saveCartToDatabase(cart, user.getId());
            }
        }
        session.setAttribute("cartMap", cart);
        session.setAttribute(("totalCartPrice"), cart.getTotalCartPrice());
        request.getRequestDispatcher("/webpage/cart/cart.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}