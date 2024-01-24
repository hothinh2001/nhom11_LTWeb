package vn.edu.hcmuaf.fit.webanimalfeed.impl;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.cart.CartDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.Cart;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartItems;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartProduct;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;
import vn.edu.hcmuaf.fit.webanimalfeed.service.ProductService;
import vn.edu.hcmuaf.fit.webanimalfeed.utils.GeneralIdUtils;

import java.util.Date;
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
    public void saveCartFromSessionToDatabase(int userId, CartProduct cartSession) {
        CartDAO cartDAO = new CartDAO();
        Cart cartInput = new Cart();
        cartInput.setId(Integer.parseInt(GeneralIdUtils.generateId()));
        cartInput.setUserId(userId);
        cartInput.setTotalPrice(cartSession.getTotalPrice());
        cartInput.setCreateAt(new Date());
        cartInput.setModifiedAt(new Date());
        cartDAO.saveCartToDB(cartInput);
        for (Map.Entry<Integer, CartProduct> entry : data.entrySet()) {
            CartProduct cartProduct = entry.getValue();
            CartItems cartItems = new CartItems();
            cartItems.setId(Integer.parseInt(GeneralIdUtils.generateId()));
            cartItems.setCartId(cartInput.getId());
            cartItems.setProductId(cartProduct.getProduct().getId());
            cartItems.setQuantity(cartProduct.getQuantity());
            cartItems.setTotalPrice(cartProduct.getTotalPrice());
            cartItems.setCreateAt(new Date());
            cartItems.setModifiedAt(new Date());
            cartDAO.saveCartItemsToDB(cartItems);
        }
    }

    @Override
    public boolean isCartExist(int userId) {
        CartDAO cartDAO = new CartDAO();
        return cartDAO.isCartExist(userId);
    }

    @Override
    public void createCart(int userId) {
        CartDAO cartDAO = new CartDAO();
        Cart cart = new Cart();
        cart.setId(Integer.parseInt(GeneralIdUtils.generateId()));
        cart.setUserId(userId);
        cart.setTotalPrice(0);
        cart.setCreateAt(new Date());
        cart.setModifiedAt(new Date());
        cartDAO.saveCartToDB(cart);
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
