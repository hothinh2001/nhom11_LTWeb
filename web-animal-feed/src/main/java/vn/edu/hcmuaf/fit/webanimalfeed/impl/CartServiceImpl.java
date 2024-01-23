package vn.edu.hcmuaf.fit.webanimalfeed.impl;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.CartProduct;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;
import vn.edu.hcmuaf.fit.webanimalfeed.service.ProductService;

import java.util.HashMap;
import java.util.Map;

public class CartServiceImpl implements CartService {
    private final Map<Integer, CartProduct> data = new HashMap<>();
    @Override
    public boolean add(int productId) {
        return add(productId, 1);
    }

    @Override
    public boolean add(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductById(String.valueOf(productId));
        if (product == null) return false;
        CartProduct cartProduct = null;
        if (data.containsKey(productId)) {
            cartProduct = data.get(productId);
            cartProduct.increaseQuantity(quantity);
        } else {
            cartProduct = new CartProduct(quantity, product);
        }
        data.put(productId, cartProduct);
        return true;
    }

    @Override
    public void increaseQuantity(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductById(String.valueOf(productId));
        if (product == null) return;
        CartProduct cartProduct = null;  //
        if (data.containsKey(productId)) {
            cartProduct = data.get(productId);
            cartProduct.increaseQuantity(quantity);
        } else {
            cartProduct = new CartProduct(quantity, product);
        }
        data.put(productId, cartProduct);


    }

    @Override
    public void decreaseQuantity(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductById(String.valueOf(productId));
        if (product == null) return;
        CartProduct cartProduct = null;  //
        if (data.containsKey(productId)) {
            cartProduct = data.get(productId);
            cartProduct.decreaseQuantity(quantity);
        } else {
            cartProduct = new CartProduct(quantity, product);
        }
        data.put(productId, cartProduct);

    }

    @Override
    public boolean saveCartToDatabase(String userId) {
        return false;
    }

    @Override
    public boolean remove(int id) {
        if (!data.containsKey(id)) return false;
        data.remove(id);
        return true;
    }

    @Override
    public int getTotalQuantity() {
        return data.size();
    }

    @Override
    public long getTotalCartPrice() {
        long total = 0;
        for (Map.Entry<Integer, CartProduct> entry : data.entrySet()) {
            total += entry.getValue().getTotalPrice();
        }
        return total;
    }

    @Override
    public Map<Integer, CartProduct> getData() {
        return data;
    }
}
