package vn.edu.hcmuaf.fit.webanimalfeed.service;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.CartProduct;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import java.util.HashMap;
import java.util.Map;

public class CartService {

    Map<Integer, CartProduct> data = new HashMap<>();

    public boolean add(int add) {
        return add(add, 1);
    }

    public boolean add(int add, int quantity) {
        Product p = ProductService.getInstance().getProductById(String.valueOf(add));
        if (p == null) return false;
        CartProduct cartProduct = null;
        if (data.containsKey(add)) {
            cartProduct = data.get(add);
            cartProduct.increQuantity(quantity);
        } else {
            cartProduct = new CartProduct(quantity, p);
        }
        data.put(add, cartProduct);
        return true;

    }

    public boolean remove(int id) {
        if (!data.containsKey(id)) return false;
        data.remove(id);
        return true;
    }


    public int getTotalQuantity() {
        return data.size();
    }

    public Map<Integer, CartProduct> getData() {
        return data;
    }

    public static void main(String[] args) {

    }
}
