package vn.edu.hcmuaf.fit.webanimalfeed.service;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartProduct;

import java.util.Map;

public interface CartService {

    boolean add(int productId);

    boolean add(int productId, int quantity);

    void increaseQuantity(int productId, int quantity);

    void decreaseQuantity(int productId, int quantity);

    void saveCartFromSessionToDatabase(int userId );

    boolean isCartExist(int userId);

    void createCart(int userId);

    boolean remove(int id);

    int getTotalQuantity();

    long getTotalCartPrice();

    Map<Integer, CartProduct> getData();

    CartService getCartDetail(int id);

    boolean contains(int productId);

    void saveCartToDatabase(CartService cart, int userId);
}
