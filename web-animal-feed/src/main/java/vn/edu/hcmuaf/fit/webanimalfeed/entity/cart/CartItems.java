package vn.edu.hcmuaf.fit.webanimalfeed.entity.cart;

import java.util.Date;

public class CartItems {
    private int id;
    private int productId;
    private int cartId;
    private int quantity;
    private double totalPrice;
    private Date createAt;
    private Date modifiedAt;

    public CartItems(int id, int productId, int cartId, int quantity, double totalPrice, Date createAt, Date modifiedAt) {
        this.id = id;
        this.productId = productId;
        this.cartId = cartId;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.createAt = createAt;
        this.modifiedAt = modifiedAt;
    }

    public CartItems() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "CartItems{" +
                "id=" + id +
                ", productId=" + productId +
                ", cartId=" + cartId +
                ", quantity=" + quantity +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
