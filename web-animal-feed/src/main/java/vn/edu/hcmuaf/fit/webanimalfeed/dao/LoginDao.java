package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Role;
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
            String query = "SELECT u.id, u.`name`,u.avatar, u.username, u.gender, u.birthdate, r.nameRole AS 'nameRole', u.phone, u.email,u.password,u.address,u.emailConfirmed\n" +
                    "FROM users u\n" +
                    "JOIN roles r ON u.roleId = r.id\n" +
                    "WHERE u.username = ? AND u.`password` = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Role r=new Role();
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

    // hàm check role của user
    public int checkRole(String user, String pass) {
        try {
            String query = "select * from users where username =? and password=? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt("roleId");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;

    }

//    public static void main(String[] args) {
//        LoginDao dao = new LoginDao();
//        Users u = dao.checkLogin("baotran123", "12345");
//        System.out.println(u);
//    }
public static void main(String[] args) {
    LoginDao dao = new LoginDao();
    int u = dao.checkRole("cuti123", "111");
    System.out.println(u);
}
}