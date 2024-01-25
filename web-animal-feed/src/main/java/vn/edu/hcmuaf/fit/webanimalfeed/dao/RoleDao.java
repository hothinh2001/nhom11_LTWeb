package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RoleDao {
    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public List<Role> getAllRole() {
        List<Role> list = new ArrayList<>();
        String query = "SELECT * FROM roles";
        try {
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Role(rs.getInt("id"),
                        rs.getString("nameRole"),
                        rs.getString("description")));
            }
            return list;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }



    public static void main(String[] args) {
        RoleDao dao = new RoleDao();
        List<Role> list = dao.getAllRole();
        for (Role r : list) {
            System.out.println(r);
        }
    }
}
