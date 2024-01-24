package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Role;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Signup {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users checkUserExist(String user) {
        try {
            String query = "select * from users where username =?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                Role r = new Role();
                r.setNameRole(rs.getString("nameRole"));
                return new Users(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("avatar"),
                        rs.getString("username"),
                        rs.getString("gender"),
                        rs.getString("birthdate"),
                        r,
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

    public void AddSignup(String email, String username, String dateOfBirth, String gender, String phone, String pass, int role) {
            String query = "INSERT users (email, username, birthdate, gender, phone, `password`,roleId) VALUES (?,?,?,?,?,?,?)";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, email);
                ps.setString(2, username);
                ps.setString(3, dateOfBirth);
                ps.setString(4, gender);
                ps.setString(5, phone);
                ps.setString(6, pass);
                ps.setInt(7, role);
                ps.executeUpdate();


            } catch (Exception e) {
                e.printStackTrace();
            }
        }
}




