package vn.edu.hcmuaf.fit.webanimalfeed.impl;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.cart.CartDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.Cart;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartItems;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.cart.CartProduct;
import vn.edu.hcmuaf.fit.webanimalfeed.service.CartService;
import vn.edu.hcmuaf.fit.webanimalfeed.service.ProductService;
import vn.edu.hcmuaf.fit.webanimalfeed.utils.GeneralIdUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class CartServiceImpl implements CartService {
    private final Map<Integer, CartProduct> data = new HashMap<>();

    private static CartServiceImpl instance = new CartServiceImpl();

    public static CartServiceImpl getInstance() {
        return instance;
    }

    @Override
    public boolean add(int productId) {
        return add(productId, 1); // thêm 1 sản phẩm vào giỏ hàng
    }

    @Override
    public boolean add(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductById(String.valueOf(productId));
        if (product == null) return false;
        CartProduct cartProduct = null;
        if (data.containsKey(productId)) { //check xem sản phẩm đã có trong giỏ hàng chưa
            cartProduct = data.get(productId); // nếu có thì lấy sản phẩm đó ra
            cartProduct.increaseQuantity(quantity); // tăng số lượng sản phẩm lên
        } else {
            cartProduct = new CartProduct(quantity, product);
        }
        data.put(productId, cartProduct); // thêm sản phẩm vào giỏ hàng thêm vào map vs key là id sản phẩm và value là sản phẩm
        return true;
    }
    // y chang ở trên
    @Override
    public void increaseQuantity(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductById(String.valueOf(productId));
        if (product == null) return;
        CartProduct cartProduct = null;
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
            cartProduct.decreaseQuantity(quantity); //giảm thì trừ
        } else {
            cartProduct = new CartProduct(quantity, product);
        }
        data.put(productId, cartProduct);

    }

    @Override
    public void saveCartFromSessionToDatabase(int userId) {
        CartDAO cartDAO = new CartDAO();
        int cartId = cartDAO.getCartDetail(userId).getId();
        for (Map.Entry<Integer, CartProduct> entry : data.entrySet()) {
            CartProduct cartProduct = entry.getValue();
            CartItems cartItems = new CartItems();
            cartItems.setId(Integer.parseInt(GeneralIdUtils.generateId()));
            cartItems.setCartId(cartId);
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
        // hàm này sài dòng for each để duyệt qua từng sản phẩm trong giỏ hàng rồi cộng tiền lại
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

    @Override
    public CartService getCartDetail(int id) {
        CartDAO cartDAO = new CartDAO();
        CartService cartService = new CartServiceImpl();
        Cart cart = cartDAO.getCartDetail(id);
        for (CartItems cartItems : cartDAO.getCartItemsDetail(cart.getId())) {
            cartService.add(cartItems.getProductId(), cartItems.getQuantity());
        }
        return cartService;
    }

    @Override
    public boolean contains(int productId) {
        return data.containsKey(productId);
    }

    @Override
    public void saveCartToDatabase(CartService cart, int userId, int cartId) {
        CartDAO cartDAO = new CartDAO();
        for (Map.Entry<Integer, CartProduct> entry : cart.getData().entrySet()) {
            CartProduct cartProduct = entry.getValue();
            CartItems cartItems = new CartItems();
            cartItems.setId(Integer.parseInt(GeneralIdUtils.generateId()));
            cartItems.setCartId(cartId);
            cartItems.setProductId(cartProduct.getProduct().getId());
            cartItems.setQuantity(cartProduct.getQuantity());
            cartItems.setTotalPrice(cartProduct.getTotalPrice());
            cartItems.setCreateAt(new Date());
            cartItems.setModifiedAt(new Date());
            cartDAO.saveCartItemsToDB(cartItems);
        }
    }

    @Override

    public int getCartId(int userId) {
        CartDAO cartDAO = new CartDAO();
        Cart cart = cartDAO.getCartDetail(userId);
        return cart != null ? cart.getId() : -1; // Return -1 or some default value if cart is not found
    }

    @Override
    public void updateQuantity(int productId, int quantity) {
        Product product = ProductService.getInstance().getProductById(String.valueOf(productId));
        if (product == null) return;
        CartProduct cartProduct = null;  //
        if (data.containsKey(productId)) {
            cartProduct = data.get(productId);
            cartProduct.setQuantity(quantity);
        } else {
            cartProduct = new CartProduct(quantity, product);
        }
        data.put(productId, cartProduct);
    }


    public static void main(String[] args) {
        CartService cartService = new CartServiceImpl();
//        get cart detail
        CartService cartService1 = cartService.getCartDetail(1);
        System.out.println(cartService1.getTotalCartPrice());
        System.out.println(cartService1.getTotalQuantity());
        for (Map.Entry<Integer, CartProduct> entry : cartService1.getData().entrySet()) {
            System.out.println(entry.getValue().getProduct().getName());
            System.out.println(entry.getValue().getQuantity());
            System.out.println(entry.getValue().getTotalPrice());
        }
    }

    public void saveCartToDatabase(int id) {
        CartDAO cartDAO = new CartDAO();
        for (Map.Entry<Integer, CartProduct> entry : data.entrySet()) {
            CartProduct cartProduct = entry.getValue();
            CartItems cartItems = new CartItems();
            cartItems.setId(Integer.parseInt(GeneralIdUtils.generateId()));
            cartItems.setCartId(id);
            cartItems.setProductId(cartProduct.getProduct().getId());
            cartItems.setQuantity(cartProduct.getQuantity());
            cartItems.setTotalPrice(cartProduct.getTotalPrice());
            cartItems.setCreateAt(new Date());
            cartItems.setModifiedAt(new Date());
            cartDAO.saveCartItemsToDB(cartItems);
        }
    }
}
