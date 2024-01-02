package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserEditDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users edit(String name, String birthday, String gender, String address, String email, String phone ){
        try {
            String query = "update users set name = ?, birthdate = ?, gender = ?, address = ?, email = ?, phone = ? where email = ? or username=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, birthday);
            ps.setString(3, gender);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setString(6, phone);

            ps.executeUpdate();
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
            e.printStackTrace();
        }
        return null;
    }

}
