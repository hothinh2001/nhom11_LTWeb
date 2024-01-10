package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Orders;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public static List<Orders> findAll(){
            List<Orders> list = new ArrayList<>();
            String query = "SELECT * FROM orders";
            try {
                // Kết nối đến MySQL
                Connection conn = new DBContext().getConnection();

                // Tạo PreparedStatement và thực hiện truy vấn
                PreparedStatement ps = conn.prepareStatement(query);
                ResultSet rs = ps.executeQuery();

                // Xử lý kết quả và thêm vào danh sách
                while (rs.next()) {
                    list.add(new Orders(
                            rs.getInt("id"),
                            rs.getInt("userId"),
                            rs.getDouble("totalPrice"),
                            rs.getDouble("totalOrder"),
                            rs.getInt("quantity"),
                            rs.getString("orderStatus"),
                            rs.getInt("paymentId")

                    ));
                }

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Đóng kết nối sau khi sử dụng
                try {
                    if (conn != null) {
                        conn.close();
                    }
                    if (ps != null) {
                        ps.close();
                    }
                    if (rs != null) {
                        rs.close();
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            return list;


    }




    //danh sach don hang có trạng thái =" ?"
    public static List<Orders> findByOrderStatus(String status){
        List<Orders> list = new ArrayList<>();
        String query = "SELECT * FROM orders WHERE orderStatus = ?";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                list.add(new Orders(
                        rs.getInt("id"),
                        rs.getInt("userId"),
                        rs.getDouble("totalPrice"),
                        rs.getDouble("totalOrder"),
                        rs.getInt("quantity"),
                        rs.getString("orderStatus"),
                        rs.getInt("paymentId")

                ));

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đóng kết nối sau khi sử dụng
            try {
                if (conn != null) {
                    conn.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }
    }

