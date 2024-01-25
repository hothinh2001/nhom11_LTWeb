package vn.edu.hcmuaf.fit.webanimalfeed.dao.order;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.order.Payment;
import vn.edu.hcmuaf.fit.webanimalfeed.utils.GeneralIdUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OrderDAO {
    Connection connectionDB = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void createPayment(Payment payment) {
        try {
            connectionDB = DBContext.getConnection();
            String sql = "INSERT INTO payment (id,fee,methobId,statusId) VALUES (?, ?, ?, ?)";
            ps = connectionDB.prepareStatement(sql);
            ps.setInt(1, payment.getId());
            ps.setDouble(2, payment.getFee());
            ps.setInt(3, payment.getMethodId());
            ps.setInt(4, payment.getStatusId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connectionDB.close();
                ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        OrderDAO orderDAO = new OrderDAO();
        Payment payment = new Payment();
        payment.setId(Integer.parseInt(GeneralIdUtils.generateId()));
        payment.setFee(30000);
        payment.setMethodId(1);
        payment.setStatusId(1);

        orderDAO.createPayment(payment);
    }
}
