package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Role;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users editUserById(int id, String name, String birthday, String gender, String address, String email, String phone, String avatar) {
        try {
            String query = "UPDATE users SET `name` = ?,\n" +
                    "birthdate = ?,\n" +
                    "gender = ?,\n" +
                    "address = ?,\n" +
                    "email = ?,\n" +
                    "phone = ?, \n" +
                    "avatar = ?\n" +
                    "WHERE id=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, birthday);
            ps.setString(3, gender);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setString(6, phone);
            ps.setString(7, avatar);
            ps.setInt(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //hiển thị danh sách user trên trang chỉnh sửa thông tin
    public Users getDanhsachUser(String uid) {
        String query = "SELECT u.id, u.`name`,u.avatar, u.username, u.gender, u.birthdate, r.nameRole AS 'nameRole', u.phone, u.email,u.password,u.address,u.emailConfirmed\n" +
                "FROM users u\n" +
                "JOIN roles r ON u.roleId = r.id\n" +
                "WHERE u.id=? ";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();
            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ResultSet rs = ps.executeQuery();
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
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    //dem so khach hang dang ki
    public static Users countUserRoles() {
        String query = "SELECT count u FROM users u JOIN roles r ON u.roleId = r.id WHERE name = 'user' ";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
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

    //getAllUser
    public List<Users> getAllUser() {
        List<Users> list = new ArrayList<>();
        String query = "SELECT u.id,\n" +
                "u.`name`,\n" +
                "u.avatar,\n" +
                "u.username,\n" +
                "u.gender,\n" +
                "u.birthdate,\n" +
                "u.phone,\n" +
                "r.nameRole AS nameRole,\n" +
                "u.`email`,\n" +
                "u.`password`,\n" +
                "u.address,\n" +
                "u.emailConfirmed\n" +
                "FROM users u\n" +
                "JOIN roles r ON u.roleId = r.id\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                Role r = new Role();
                r.setNameRole(rs.getString("nameRole"));

                list.add(new Users(
                        rs.getInt("id"),
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
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        UserDao dao = new UserDao();
        List<Users> list = dao.getAllUser();
        for (Users u : list) {
            System.out.println(u.getRoleId().getNameRole());
        }
    }
}
