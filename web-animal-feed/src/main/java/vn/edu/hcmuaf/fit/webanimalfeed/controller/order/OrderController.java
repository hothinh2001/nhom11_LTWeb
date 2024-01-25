package vn.edu.hcmuaf.fit.webanimalfeed.controller.order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "order", value = "/order")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //qua đây lưu vào database xong
        // sao k lm tiếp???? lưu khó quấ
        // 1 order có nhiều order item ở trong đó
        //session là hashmap
        // bth lấy trong cart ra
    }
}
 
