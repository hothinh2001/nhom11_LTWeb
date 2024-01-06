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

public class AdminDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void editProduct(String name, String nameDetail, String urlImage, String price, String ingredients, String nutritionInfo, String usageInstruction, String inventoryId, String categoryId, String brandId, String createdAt, String modifiedAt, String pid) {
        String query = "UPDATE products\n" +
                "SET [name] = ?,\n" +
                "[nameDetail] = ?,\n" +
                "[urlImage]= ?,\n" +
                "[price]= ?,\n" +
                "[ingredients]= ?,\n" +
                "[nutritionInfo]= ?,\n" +
                "[usageInstruction]= ?,\n" +
                "[inventoryId]= ?,\n" +
                "[categoryId]= ?\n" +
                "[brandId]= ?\n" +
                "[createdAt]= ?\n" +
                "[modifiedAt]= ?\n" +
                "where id =?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, nameDetail);
            ps.setString(3, urlImage);
            ps.setString(4, price);
            ps.setString(5, ingredients);
            ps.setString(6, nutritionInfo);
            ps.setString(7, usageInstruction);
            ps.setString(8, inventoryId);
            ps.setString(9, categoryId);
            ps.setString(10, brandId);
            ps.setString(11, createdAt);
            ps.setString(12, modifiedAt);
            ps.setString(13, pid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

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
                "JOIN inventories i ON p.inventoryId = i.id\n";
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
        } finally {
            // Đóng kết nối sau khi sử dụng
            try {
                if (conn != null) {
                    conn.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }

    public void insertProduct(String name, String nameDetail, String ingredients, String nutritionInfo, String usageInstruction, String price, String urlImage, String quantityAvailable, String inventoryId, String categoryId, String brandId, String createdAt, String modifiedAt) {
        String query = "INSERT INTO products (name, nameDetail, ingredients, nutritionInfo, usageInstruction, price, urlImage, quantityAvailable, inventoryId, categoryId,  brandId,  createdAt, modifiedAt)\n" +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, nameDetail);
            ps.setString(3, ingredients);
            ps.setString(4, nutritionInfo);
            ps.setString(5, usageInstruction);
            ps.setString(6, price);
            ps.setString(7, urlImage);
            ps.setString(8, quantityAvailable);
            ps.setString(9, inventoryId);
            ps.setString(10, categoryId);
            ps.setString(11, brandId);
            ps.setString(12, createdAt);
            ps.setString(13, modifiedAt);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(String pid) {
        String query = "DELETE FROM products WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {
        AdminDAO dao = new AdminDAO();
        List<Product> list = dao.getAllProduct();
        for (Product p : list) {
            System.out.println(p);
        }
    }
}
