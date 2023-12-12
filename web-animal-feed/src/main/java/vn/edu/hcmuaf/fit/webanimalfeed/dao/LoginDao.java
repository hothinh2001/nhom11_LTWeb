package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users checkLogin(String user, String pass) {
        try {
            String query = "select * from users where username =? and password=? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return  new Users(rs.getInt("id"),
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

    public static void main(String[] args) {
        LoginDao dao = new LoginDao();
        Users u = dao.checkLogin("baotran123","12345");
        System.out.println(u);
    }
}