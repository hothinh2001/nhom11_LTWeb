package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.*;

public class ForgotPass {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Users updatePass(String newPassword, String email) throws Exception {
        String querry = "update users set password = ? where email = ?";
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(querry);
        ps.setString(1, newPassword);
        ps.setString(2, email);
      //  ps.setString(2, (String) session.getAttribute("email"));
        rs = ps.executeQuery();
        int rowCount = ps.executeUpdate();

        return null;
    }
}
