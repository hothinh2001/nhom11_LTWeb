package vn.edu.hcmuaf.fit.webanimalfeed.dao;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.*;

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
        String query = "SELECT id, nameBrand, note FROM brands";
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
                        rs.getString("nameBrand"),
                        rs.getString("note")
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static Brand getBrandById(String bid) {
        String query = "SELECT id, nameBrand, note FROM brands WHERE id = ?";
        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, bid);
            ResultSet rs = ps.executeQuery();

            // Xử lý kết quả và thêm vào danh sách
            while (rs.next()) {
                return new Brand(
                        rs.getInt("id"),
                        rs.getString("nameBrand"),
                        rs.getString("note")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
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

    public List<Product> searchByName(String txtSearch) {
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
                "JOIN inventories i ON p.inventoryId = i.id\n" +
                "WHERE LOWER(name) LIKE LOWER(?) OR LOWER(nameDetail) LIKE LOWER(?);";

        try {
            // Kết nối đến MySQL
            Connection conn = new DBContext().getConnection();

            // Tạo PreparedStatement và thực hiện truy vấn
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setString(2, "%" + txtSearch + "%");
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


    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.searchByName("gà để");
        for (Product p : list) {
            System.out.println(p.getName() + "\t" + p.getNameDetail());
        }
    }
}
