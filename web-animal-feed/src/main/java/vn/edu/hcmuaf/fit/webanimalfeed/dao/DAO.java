package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Inventory;
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
        String query = "SELECT id,urlImage FROM slideShows";
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

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT id,nameCate, iconCate FROM categories";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt("id"),
                        rs.getString("nameCate"),
                        rs.getString("iconCate")
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Brand> getAllBrands() {
        List<Brand> list = new ArrayList<>();
        String query = "SELECT id, nameBrand FROM brands";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                list.add(new Brand(
                        rs.getInt("id"),
                        rs.getString("nameBrand")
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Inventory> getAllInventories() {
        List<Inventory> list = new ArrayList<>();
        String query = "SELECT id, note, quantity FROM inventories";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                list.add(new Inventory(
                        rs.getInt("id"),
                        rs.getString("note"),
                        rs.getInt("quantity")
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Inventory> list = dao.getAllInventories();
        for (Inventory product : list) {
            System.out.println(product);
        }
    }
}
