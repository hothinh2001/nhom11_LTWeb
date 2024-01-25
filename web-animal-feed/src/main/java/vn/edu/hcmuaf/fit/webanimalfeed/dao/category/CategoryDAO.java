package vn.edu.hcmuaf.fit.webanimalfeed.dao.category;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Inventory;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public void insertCategory(String nameCate, String iconCate) {
        String query = "INSERT INTO categories (nameCate, iconCate) VALUES (?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, nameCate);
            ps.setString(2, iconCate);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Category getCategoryById(int id) {
        String query = "SELECT * FROM categories WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(
                        rs.getInt("id"),
                        rs.getString("nameCate"),
                        rs.getString("iconCate")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void editCategory(String nameCate, String iconCate, String cid) {
        String query = "UPDATE categories SET nameCate = ?, iconCate = ? WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, nameCate);
            ps.setString(2, iconCate);
            ps.setString(3, cid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> getProductByCate(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products \n" +
                "WHERE categoryId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                Brand brand = new Brand();
                Inventory inventory = new Inventory();
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("nameDetail"),
                        rs.getInt("price"),
                        rs.getString("ingredients"),
                        rs.getString("nutritionInfo"),
                        rs.getString("usageInstruction"),
                        rs.getString("urlImage"),
                        category,
                        brand,
                        inventory,
                        rs.getInt("quantityAvailable")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return list;
    }

    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<Product> list = dao.getProductByCate(3 + "");
        for (Product p : list) {
            System.out.println(p.getId());
        }
    }
}
