package vn.edu.hcmuaf.fit.webanimalfeed.entity.cart;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

public class CartProduct {
    private int quantity;
    private Product product;


    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public CartProduct(int quantity, Product p) {
        this.quantity = quantity;
        this.product = p;
    }

    public void increaseQuantity(int quantity) {
        this.quantity += quantity;
    }

    public void decreaseQuantity(int quantity) {
        this.quantity -= quantity;
    }

    @Override
    public String toString() {
        return "CartProduct{" +
               "quantity=" + quantity +
               ", product=" + product +
               '}';
    }

    public int getTotalPrice() {
        return this.quantity * this.product.getPrice();
    }
}