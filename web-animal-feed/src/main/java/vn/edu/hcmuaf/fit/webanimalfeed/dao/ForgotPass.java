package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.*;

public class ForgotPass {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Users updatePass(String newPassword, String email)  {
        String querry = "update users set password = ? where email = ?";
        try {
            conn = new DBContext().getConnection();

        ps = conn.prepareStatement(querry);
        ps.setString(1, newPassword);
        ps.setString(2, email);
      //  ps.setString(2, (String) session.getAttribute("email"));
        ps.executeUpdate();
//        int rowCount = ps.executeUpdate();
        while (rs.next()) {
            return new Users(rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("avatar"),
                    rs.getString("username"),
                    rs.getString("gender"),
                    rs.getString("birthdate"),
                    rs.getInt("roleId"),
                    rs.getString("phone"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getString("address"),
                    rs.getBoolean("emailConfirmed")
            );
        }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
