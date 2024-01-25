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
        if (user != null) { //Nếu đã đăng nhập, quay lại trang checkout truyền mấy cái này đi
            if (cart != null && cart.getTotalQuantity() > 0) {
                session.setAttribute("shippingFee", 30000);
                session.setAttribute("cartMap", cart);
                session.setAttribute("totalCartPrice", cart.getTotalCartPrice());
            }
            request.getRequestDispatcher("paymentForm.jsp").forward(request, response); //Chuyểnquan cái form
        } else { //Nếu chưa đăng nhập thì tạo cái session url để lưu lại url hiện tại
            session.setAttribute("url", "checkout");
            request.getRequestDispatcher("Login.jsp").forward(request, response); //Chuyển sang trang đăng nhập
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}