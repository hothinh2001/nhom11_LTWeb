package vn.edu.hcmuaf.fit.webanimalfeed.dao;

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

public class BrandDAO {
    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public List<Product> getProductByBrandId(String bid) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products \n" +
                "WHERE brandId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);
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
}
