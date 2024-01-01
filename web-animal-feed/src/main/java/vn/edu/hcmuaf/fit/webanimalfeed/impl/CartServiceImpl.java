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
    public boolean add(int add) {
        return add(add, 1);
    }

    @Override
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
    public Map<Integer, CartProduct> getData() {
        return data;
    }
}
