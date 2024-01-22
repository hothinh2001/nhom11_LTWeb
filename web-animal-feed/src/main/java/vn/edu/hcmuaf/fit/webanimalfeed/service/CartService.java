package vn.edu.hcmuaf.fit.webanimalfeed.service;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.CartProduct;

import java.util.Map;

public interface CartService {

    boolean add(int add);

    boolean add(int add, int quantity);

    void increaseQuantity(int productId, int quantity);

    void decreaseQuantity(int productId, int quantity);

    boolean saveCartToDatabase(String userId);

    boolean remove(int id);

    int getTotalQuantity();

    long getTotalCartPrice();

    Map<Integer, CartProduct> getData();

}
