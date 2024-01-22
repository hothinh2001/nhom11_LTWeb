package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Brand;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Category;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Inventory;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ProductDAO {
    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    //getAllProduct
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "    p.id,\n" +
                "    p.name,\n" +
                "    p.nameDetail,\n" +
                "    p.urlImage,\n" +
                "    p.price,\n" +
                "    p.ingredients, \n" +
                "    p.nutritionInfo, \n" +
                "    p.usageInstruction,\n" +
                "    p.quantityAvailable,\n" +
                "    c.`nameCate` AS nameCate,\n" +
                "\t\tb. `nameBrand`  AS nameBrand,\n" +
                "\t\ti.quantity AS Quantity\n" +
                "FROM products p\n" +
                "JOIN categories c ON p.categoryId = c.id\n" +
                "JOIN brands b ON p.brandId = b.id\n" +
                "JOIN inventories i ON p.inventoryId = i.id";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                Category category = new Category();
                category.setNameCate(rs.getString("nameCate"));
                Brand brand = new Brand();
                brand.setNameBrand(rs.getString("nameBrand"));
                Inventory inventory = new Inventory();
                inventory.setQuantity(rs.getInt("Quantity"));
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

    // hiển thị sản phẩm by id
    public static Product getProductById(String id) {
        String query = "SELECT\n" +
                "    p.id,\n" +
                "    p.name,\n" +
                "    p.nameDetail,\n" +
                "    p.urlImage,\n" +
                "    p.price,\n" +
                "    p.ingredients, \n" +
                "    p.nutritionInfo, \n" +
                "    p.usageInstruction,\n" +
                "    p.quantityAvailable,\n" +
                "    c.`nameCate` AS nameCate,\n" +
                "\t\tb. `nameBrand`  AS nameBrand,\n" +
                "\t\ti.quantity AS Quantity\n" +
                "FROM products p\n" +
                "JOIN categories c ON p.categoryId = c.id\n" +
                "JOIN brands b ON p.brandId = b.id\n" +
                "JOIN inventories i ON p.inventoryId = i.id\n" +
                "WHERE p.id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setNameCate(rs.getString("nameCate"));
                Brand brand = new Brand();
                brand.setNameBrand(rs.getString("nameBrand"));
                Inventory inventory = new Inventory();
                inventory.setQuantity(rs.getInt("Quantity"));
                return new Product(
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
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    //received 4 products in the category that do not overlap with the current product
    public List<Product> get4ProductByCategory(String cid, String pid) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "    p.id,\n" +
                "    p.name,\n" +
                "    p.nameDetail,\n" +
                "    p.urlImage,\n" +
                "    p.price,\n" +
                "    p.ingredients,\n" +
                "    p.nutritionInfo,\n" +
                "    p.usageInstruction,\n" +
                "    p.quantityAvailable,\n" +
                "    c.`nameCate` AS nameCate,\n" +
                "    b.`nameBrand` AS nameBrand,\n" +
                "    i.quantity AS Quantity\n" +
                "FROM products p\n" +
                "JOIN categories c ON p.categoryId = c.id\n" +
                "JOIN brands b ON p.brandId = b.id\n" +
                "JOIN inventories i ON p.inventoryId = i.id\n" +
                "WHERE p.categoryId = ? AND p.id <> ?\n" +
                "LIMIT 4";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            ps.setString(2, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setNameCate(rs.getString("nameCate"));
                Brand brand = new Brand();
                brand.setNameBrand(rs.getString("nameBrand"));
                Inventory inventory = new Inventory();
                inventory.setQuantity(rs.getInt("Quantity"));
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

    //get category based on product id
    public Category getCategoryByProductId(String id) {
        String query = "SELECT c.id, c.nameCate FROM categories c\n" +
                "JOIN products p ON c.id = p.categoryId\n" +
                "WHERE p.id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(
                        rs.getInt("id"),
                        rs.getString("nameCate"),
                        rs.getString("nameCate")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    //    public static void main(String[] args) throws Exception {
//        ProductDAO dao = new ProductDAO();
//        List<Product> list = dao.get4ProductByCategory(3 + "", 1 + "");
//        for (Product product : list) {
//            System.out.println(product.getName());
//        }
//    }
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        Category category = dao.getCategoryByProductId("2");
        System.out.println(category.getNameCate());
    }
}
