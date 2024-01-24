package vn.edu.hcmuaf.fit.webanimalfeed.dao.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.context.DBContext;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.Cart;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartItems;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    Connection connectionDB = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    public boolean isCartExist(int userId) {
        try {
            String sql = "SELECT * FROM carts WHERE userId = ?";
            connectionDB = DBContext.getConnection();
            ps = connectionDB.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public void saveCartToDB(Cart cart) {
        String sql = "INSERT INTO carts (id, total,userId, createdAt, modifiedAt) VALUES (?, ?, ?, ?, ?)";
        try {
            connectionDB = DBContext.getConnection();
            ps = connectionDB.prepareStatement(sql);
            ps.setInt(1, cart.getId());
            ps.setDouble(2, cart.getTotalPrice());
            ps.setInt(3, cart.getUserId());
            ps.setDate(4, new java.sql.Date(cart.getCreateAt().getTime()));
            ps.setDate(5, new java.sql.Date(cart.getModifiedAt().getTime()));
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    //  save cartItems to mysql database
    public void saveCartItemsToDB(CartItems cartItems) {
        String sql = "INSERT INTO cartItems (id, cartId, productId, quantity, price,createdAt, modifiedAt) VALUES (?, ?, ?,?, ?, ?, ?)";
        try {
            connectionDB = DBContext.getConnection();
            ps = connectionDB.prepareStatement(sql);
            ps.setInt(1, cartItems.getId());
            ps.setInt(2, cartItems.getCartId());
            ps.setInt(3, cartItems.getProductId());
            ps.setInt(4, cartItems.getQuantity());
            ps.setDouble(5, cartItems.getTotalPrice());
            ps.setDate(6, new java.sql.Date(cartItems.getCreateAt().getTime()));
            ps.setDate(7, new java.sql.Date(cartItems.getModifiedAt().getTime()));
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public Cart getCartDetail(int userId) {
        Cart cart = new Cart();
        String sql = "SELECT * FROM carts WHERE userId = ?";
        try {
            connectionDB = DBContext.getConnection();
            ps = connectionDB.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                cart.setId(rs.getInt("id"));
                cart.setTotalPrice(rs.getDouble("total"));
                cart.setUserId(rs.getInt("userId"));
                cart.setCreateAt(rs.getDate("createdAt"));
                cart.setModifiedAt(rs.getDate("modifiedAt"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cart;
    }

    public List<CartItems> getCartItemsDetail(int cartId) {
        List<CartItems> cartItemsList = new ArrayList<>();
        String sql = "SELECT * FROM cartItems WHERE cartId = ?";
        try {
            connectionDB = DBContext.getConnection();
            ps = connectionDB.prepareStatement(sql);
            ps.setInt(1, cartId);
            rs = ps.executeQuery();
            while (rs.next()) {
                CartItems cartItems = new CartItems();
                cartItems.setId(rs.getInt("id"));
                cartItems.setCartId(rs.getInt("cartId"));
                cartItems.setProductId(rs.getInt("productId"));
                cartItems.setQuantity(rs.getInt("quantity"));
                cartItems.setTotalPrice(rs.getDouble("price"));
                cartItems.setCreateAt(rs.getDate("createdAt"));
                cartItems.setModifiedAt(rs.getDate("modifiedAt"));
                cartItemsList.add(cartItems);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItemsList;
    }

    public static void main(String[] args) {
        CartDAO cartDAO = new CartDAO();
        System.out.println(cartDAO.isCartExist(2));
    }

}
