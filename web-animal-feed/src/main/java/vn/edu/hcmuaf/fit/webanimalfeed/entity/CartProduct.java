package vn.edu.hcmuaf.fit.webanimalfeed.entity;

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

    public void increQuantity(int quantity) {
        this.quantity += quantity;
    }

    public void decreQuantity() {
        this.quantity -= quantity;
        if (this.quantity <= 0) {
            this.quantity += quantity;
        }
    }

    @Override
    public String toString() {
        return "CartProduct{" +
                "quantity=" + quantity +
                ", product=" + product +
                '}';
    }
}