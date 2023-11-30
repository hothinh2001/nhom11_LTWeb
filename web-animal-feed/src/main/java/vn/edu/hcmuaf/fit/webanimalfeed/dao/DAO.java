package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.SlideShow;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<SlideShow> getAllSlideShow() {
        List<SlideShow> list = new ArrayList<>();
        String query = "SELECT id,urlImage FROM slideshows";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                list.add(new SlideShow(
                        rs.getInt("id"),
                        rs.getString("urlImage")
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }



    public static void main(String[] args) {
        DAO dao = new DAO();
        List<SlideShow> list = dao.getAllSlideShow();
        for (SlideShow product : list) {
            System.out.println(product);
        }
    }
}