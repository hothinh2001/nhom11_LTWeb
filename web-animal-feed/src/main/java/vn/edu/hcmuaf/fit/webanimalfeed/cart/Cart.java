package vn.edu.hcmuaf.fit.webanimalfeed.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.service.ProductService;

import java.util.HashMap;
import java.util.Map;

public class Cart {

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

//    public boolean add(int id, int quantity) {
//        if (data.containsKey(id)) {
//            CartProduct cartProduct = data.get(id);
//            cartProduct.setQuantity(cartProduct.getQuantity() + quantity);
//            return true;
//        }
//        return false;
//    }

    public boolean remove(int id) {
        if (!data.containsKey(id)) return false;
        data.remove(id);
        return true;
    }

    public int getTotalQuantity() {
        return data.size();
    }
}
