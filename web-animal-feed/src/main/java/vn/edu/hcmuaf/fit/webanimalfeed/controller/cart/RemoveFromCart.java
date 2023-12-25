package vn.edu.hcmuaf.fit.webanimalfeed.controller.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;
import vn.edu.hcmuaf.fit.webanimalfeed.utils.TokenGenerator;

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

        // Lấy token từ request
        String clientToken = request.getParameter("token");

        // Lấy token từ session
        String serverToken = (String) session.getAttribute("sessionToken");

        // Kiểm tra tính hợp lệ của token
        if (isValidToken(clientToken, serverToken)) {
            // Token hợp lệ, tiếp tục xử lý

            if (cart != null) {
                String id = request.getParameter("id");
                cart.remove(Integer.parseInt(id));
                session.setAttribute("cartMap", cart);

                // Tạo mới token và lưu vào session
                String newToken = TokenGenerator.generateNewToken();
                session.setAttribute("sessionToken", newToken);

                // Trả về thông tin giỏ hàng dưới dạng JSON, kèm theo token mới
                String jsonResponse = "{\"cartSize\": " + cart.getTotalQuantity() + ", \"status\": \"success\", \"token\": \"" + newToken + "\"}";
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
        } else {
            // Token không hợp lệ, xử lý lỗi
            String jsonResponse = "{\"status\": \"error\", \"message\": \"Invalid token\"}";
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse);
        }
    }

    // Phương thức kiểm tra tính hợp lệ của token
    private boolean isValidToken(String clientToken, String serverToken) {
        return serverToken != null && serverToken.equals(clientToken);
    }
}
