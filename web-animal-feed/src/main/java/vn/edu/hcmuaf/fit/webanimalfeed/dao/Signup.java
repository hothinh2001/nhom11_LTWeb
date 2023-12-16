package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Signup {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users checkUserExist(String user) {
        try {
            String query = "select * from where username =?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                Users u = new Users(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getBoolean(12)
                        );
                return u;
            }

        } catch (Exception e) {
        }
        return null;
    }
    public void signup(String email, String username, String dateOfBirth,String gender, String phone, String pass){
        String query ="insert into users values (?,?,?,?,?,?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, username);
            ps.setString(3, dateOfBirth);
            ps.setString(4, gender);
            ps.setString(5, phone);
            ps.setString(6, pass);
            ps.executeUpdate();
        }catch(Exception e){

        }

    }
}
