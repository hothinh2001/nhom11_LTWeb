package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Login {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Users checkLogin(String user, String pass){
        try{
            String query = "select username, password from where username =? and password=? "
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs = ps.executeQuery();
            while(rs.next()){
                Users u = new Users(rs.getString(1), rs.getString(2))
                return u;
            }

    }
        catch(Exception e){

    }
    return null;
}