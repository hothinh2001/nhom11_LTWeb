package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.*;


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
                    Users users = new Users();
                    users.setName(rs.getString("name"));
                    Payment methob = new Payment();
                    methob.getMethob().setNameMethob(rs.getString("nameMethob"));
                    Status status1 = new Status();
                    status1.setNameStatus(rs.getString("nameStatus"));
                    list.add(new Orders(
                            rs.getInt("id"),
                            users,
                            rs.getDouble("totalPrice"),
                            rs.getDouble("totalOrder"),
                            rs.getInt("quantity"),
                            status1,
                            methob,
                            rs.getString("dateOrder")
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
        String query = "select o.id, u.`name` As userName, o.dateOrder, s.`nameStatus` As nameStatus,o.totalPrice,o.quantity, o.totalOrder, m.`nameMethob` As nameMethob , s.`nameStatus` As Orderstatus\n" +
                "from orders o join users u on o.userId = u.id \n" +
                "join payment p on o.paymentId = p.id\n" +
                "join methob m on p.methobId = m.id\n" +
                "join statused s on o.statusId = s.id\n" +
                "where s.nameStatus = ?";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1,status);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Users users = new Users();
                users.setName(rs.getString("userName"));
                Methob methob = new Methob();
                methob.setNameMethob(rs.getString("nameMethob"));
               Payment payment = new Payment();
               payment.setMethob(methob);
                Status status1 = new Status();
                status1.setNameStatus(rs.getString("nameStatus"));
                list.add(new Orders(
                        rs.getInt("id"),
                        users,
                        rs.getDouble("totalPrice"),
                        rs.getDouble("totalOrder"),
                        rs.getInt("quantity"),
                        status1,
                        payment,
                        rs.getString("dateOrder")
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

    public static void main(String[] args) {
        OrderDao dao = new OrderDao();
        List<Orders> list = dao.findByOrderStatus("processing");
        for (Orders o : list){
            System.out.println(o);
        }

    }
    }

