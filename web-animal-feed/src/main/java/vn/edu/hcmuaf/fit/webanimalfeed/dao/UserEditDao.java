package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Role;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
    //hiển thị danh sách user trên trang chỉnh sửa thông tin
    public Users getDanhsachUser(String uid) {
        String query = "SELECT u.id, u.`name`,u.avatar, u.username, u.gender, u.birthdate, r.nameRole AS 'nameRole', u.phone, u.email,u.password,u.address,u.emailConfirmed\n" +
                "FROM users u\n" +
                "JOIN roles r ON u.roleId = r.id\n" +
                "WHERE u.id=? " ;
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();
            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1,uid);
            ResultSet rs = ps.executeQuery();
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
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    //dem so khach hang dang ki
    public static Users countUserRoles(){
            String query = "SELECT count u FROM users u JOIN roles r ON u.roleId = r.id WHERE name = 'user' " ;
            try {
                // Kết nối đến MySQL
                Connection conn = new DBContext().getConnection();

                // Tạo PreparedStatement và thực hiện truy vấn
                PreparedStatement ps = conn.prepareStatement(query);
                ResultSet rs = ps.executeQuery();

                // Xử lý kết quả và thêm vào danh sách
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

    public static void main(String[] args) {
        UserEditDao dao = new UserEditDao();
        Users u = dao.getDanhsachUser("1");
        System.out.println(u.getName());
    }
}
